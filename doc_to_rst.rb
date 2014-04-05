#!/usr/bin/env ruby

require 'rubygems'
require 'json'
require 'nokogiri'

class DocumentParser

    def initialize
        @title = nil
    end
    attr_reader :title

    def parse(node)
        if not node.is_a? Nokogiri::XML::Node
            raise "#{node} is not a HTML node"
        end

        if node.text?
            t = node.text.strip
            if not t.empty?
                yield Text.new << t
            end
        else
            meth_name = "parse_#{node.name.downcase}".to_sym
            if self.respond_to? meth_name
                yield self.send meth_name, node
            else
                node.children.each do |child|
                    parse child do |result|
                        if result.is_a? Element or result.is_a? String
                            yield result
                        elsif result.nil?
                            # ignored element
                        else
                            raise "Unexpected child #{result}"
                        end
                    end
                end
            end
        end
        self
    end

    class Element
        attr_reader :children
        @@indent = 2
        def initialize
            @children = []
        end
        def <<(child)
            if not child.is_a? Element and not child.is_a? String
                raise "Unexpected child #{child}"
            end

            @children << child
            self
        end
        def each
            @children.each do |child|
                if child.is_a? Element
                    child.each do |result|
                        if not result.is_a? String
                            raise "Invalid result #{result}"
                        end

                        yield "#{" " * @@indent}#{result}"
                    end
                elsif child.is_a? String
                    yield child
                else
                    raise "Invalid child #{child}"
                end
            end
        end
        def write(fp)
            each do |child|
                fp.write "#{child}\n"
            end
        end
    end

    def _standard_parse(element, node)
        node.children.each do |child|
            parse child do |result|
                element << result
            end
        end
        element
    end

    class Text < Element
        def <<(child)
            if not child.is_a? String
                raise "Text should only have string children"
            end
            @children << child
            self
        end
        def each
            yield @children.collect{|c|c.split.join(' ')}.join(' ')
        end
        def to_s
            @children.join ' '
        end
    end

    [:meta, :link, :script, :style, :h1].each do |tag_name|
        self.send :define_method, "parse_#{tag_name}" do |node|
            # these tags are ignored
        end
    end

    class Heading < Element
        def initialize(symbol)
            super()
            @symbol = symbol
        end
        def each
            text = @children.join(' ')
            yield ''
            yield text
            yield @symbol * text.length
            yield ''
        end
    end

    { 2 => '-', 3 => '~', 4 => '^' }.each do |level, symbol|
        self.send :define_method, "parse_h#{level}" do |node|
            _standard_parse Heading.new(symbol), node
        end
    end

    class Pre < Text
        def each
            yield '::'
            yield ''
            @children.each do |child|
                if not child.is_a? String
                    raise "<pre> should only have textual children"
                end
                child.to_s.each_line do |line|
                    yield "  #{line.rstrip}"
                end
            end
            yield ''
        end
    end
    def parse_pre(node)
        Pre.new << node.text
    end

    class Table < Element
        def initialize
            super
            @colwidths = nil
        end
        def <<(child)
            if not child.is_a? Tr
                raise "Tables can only have <tr> children, not #{child}"
            end
            @children << child
            if @colwidths.nil?
                @colwidths = Array.new(child.children.length) {|i| 0}
            end
            child.children.each_with_index do |td, i|
                @colwidths[i] = td.width if td.width > @colwidths[i]
            end

            self
        end
        def each
            yield "+#{@colwidths.collect { |w| '-' * (w + 2) }.join('+')}+"
            @children.each do |tr|
                if not tr.is_a? Tr
                    raise "Table children should be <tr>, not #{tr}"
                end
                tr.each(@colwidths) do | tr_line |
                    yield tr_line
                end
            end
            yield ''
        end
    end

    def parse_table(node)
        _standard_parse Table.new, node
    end

    class Tr < Element
        def <<(child)
            if not child.is_a? Td
                raise "Tables can only have <th> or <td> children, not #{child}"
            end
            @children << child
            self
        end
        def each(colwidths)
            rows = (children.collect {|td| td.height}).max
            (0..rows).each do |r|
                row = []
                children.each_with_index do |td, i|
                    row << (td.contents.length > r ? td.contents[r] : '').ljust(colwidths[i])
                end
                yield "| #{row.join(' | ')} |"
            end
            borders = (0...children.length).collect{|i| children[i].border * (colwidths[i] + 2)}
            yield "+#{borders.join('+')}+"
        end
    end

    def parse_tr(node)
        _standard_parse Tr.new, node
    end

    class Td < Element
        @@indent = 0
        attr_reader(:border)
        def initialize(border, colspan, rowspan)
            super()
            @border = border
            if colspan != 1
                raise "colspan not yet supported"
            end
            if rowspan != 1
                raise "rowspan not yet supported"
            end

            @cache = nil
        end
        def contents
            if @cache.nil?
                cache = []
                each { |x| cache << x }
                @cache = cache
            end
            @cache
        end
        def width
            (contents.collect {|x| x.length}).max or 0
        end
        def height
            contents.length
        end
    end

    def parse_th(node)
        _standard_parse Td.new('=', node[:colspan] || 1, node[:rowspan] || 1), node
    end

    def parse_td(node)
        _standard_parse Td.new('-', node[:colspan] || 1, node[:rowspan] || 1), node
    end

    class Li < Element
    end
    def parse_li(node)
        _standard_parse Li.new, node
    end

    class List < Element
        def initialize(marker)
            super()
            @marker = marker
        end
        def <<(child)
            if not child.is_a? Li
                raise "<ul> and <ol> can only have <li> children, not #{child}"
            end
            @children << child
            self
        end
        def each
            children.each do |li|
                if not li.is_a? Li
                    raise "Lists can only have <li> children, not #{li}"
                end
                first = true
                li.each do |line|
                    yield "#{first ? @marker : ' '} #{line}"
                    first = false
                end
            end
        end
    end
    def parse_ul(node)
        _standard_parse List.new('-'), node
    end
    def parse_ol(node)
        _standard_parse List.new('#'), node
    end

    class Link < Element
        attr_reader :href
        def initialize(node)
            super()
            @href = node['href']
        end
        def <<(child)
            if not child.is_a? Text
                raise "Links can only have textual children"
            end
            @children << child
            self
        end
        def each
            text = @children.join(' ')
            yield "`#{text} <#{@href}>`_"
        end
    end
    def parse_a(node)
        _standard_parse Link.new(node), node
    end

    def parse_title(node)
        @title = node.text
        nil
    end

end

def process_document(data, out_file)
    DocumentParser.new.parse data.root do |result|
        result.write out_file
    end
end

def process_index(data, out_file)

    heading = DocumentParser::Heading.new('=') << 'Cloud Foundry API'
    heading.write out_file

    out_file.write ".. toctree::\n"
    out_file.write "   :maxdepth: 2\n"
    out_file.write "\n"

    def recurse(child)
        if child.is_a? DocumentParser::Link
            yield child
        elsif child.is_a? DocumentParser::Element
            child.children.each do |node|
                recurse node do |link|
                    yield link
                end
            end
        end
    end

    DocumentParser.new.parse data.root do |result|
        result.children.each do |child|
            recurse child do |link|
                out_file.write "   #{link.href[0..-6]}\n"
            end
        end
    end
end

docs = {}

Dir.glob('internals/cloud_controller/**/*.html') do |in_path|
    base_path = in_path[0..-6]
    out_path = "#{base_path}.rst"
    puts out_path

    data = open in_path, 'r' do |in_file|
        Nokogiri::HTML(in_file) do |config|
            config.noblanks
            config.nonet
        end
    end

    open out_path, 'w' do |out_file|
        if not in_path.end_with? '/index.html'
            doc = process_document(data, out_file)
            rel_path = base_path['internals/cloud_controller/'.length..-1]
            if not docs.has_key? doc.title
                docs[doc.title] = [File.dirname(rel_path), []]
            end
            docs[doc.title][1] << File.basename(out_path)
        end
    end
end

open('internals/cloud_controller/index.rst', 'w')do |index_file|
    heading = DocumentParser::Heading.new('=') << 'Cloud Foundry API'
    heading.write index_file

    index_file.write ".. toctree::\n"
    index_file.write "   :maxdepth: 2\n"
    index_file.write "\n"

    docs.keys.sort.each do |key|
        dir_path, rel_paths = docs[key]
        index_file.write "   #{dir_path}/index\n"
        open("internals/cloud_controller/#{dir_path}/index.rst", 'w') do |sub_index|
            heading = DocumentParser::Heading.new('=') << key
            heading.write sub_index

            sub_index.write ".. toctree::\n"
            sub_index.write "   :maxdepth: 2\n"
            sub_index.write "\n"
            rel_paths.sort.each do |path|
                sub_index.write "   #{path}\n"
            end
        end
    end
end
