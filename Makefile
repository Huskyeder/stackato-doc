# Makefile for stackato-doc
#
# Sphinx documentation for Stackato.
# Used by packaging system and also manually during development and testing.
#
# This package depends on external data.  Run "make update" to update the
# local copy of that data.  Push any resulting changes to the git repo
# in order to trigger generation of a new package.
#

# You can set these variables from the command line.
SPHINXOPTS    =
ifndef SPHINXBUILD
    SPHINXBUILD = sphinx-build
endif
PAPER         =
BUILDDIR      = _build

# Build directory used by packaging systems.

PUBLICDIR	= public-docs

# Installation directory used by packaging systems.

INSTALLHOME	= /home/stackato
INSTALLROOT	= $(INSTALLHOME)/stackato

HOMEDIR		= $(DESTDIR)$(prefix)$(INSTALLHOME)
INSTDIR		= $(DESTDIR)$(prefix)$(INSTALLROOT)

ifdef STACKATO_PKG_BRANCH
    BRANCH_OPT=-b $(STACKATO_PKG_BRANCH)
endif

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .

STACKATO_LIVE_TARGET = api.stackato1-prod.activestate.com
STACKATO_LIVE_USER = deploy@activestate.com

PREV_TARGET = $(stackato target)

# Variables used for extracting docopts from kato.

KATO_REPO=https://github.com/ActiveState/kato.git

UPDATE=docopts
KATO_DIR=$(UPDATE)/kato
GEM_HOME=$(UPDATE)/gems
DOCOPT_LIB=$(GEM_HOME)/gems/docopt-*/lib

# The targets "all", "install", and "uninstall", as well as the variables
# DESTDIR, prefix and PKG_GITDESCRIBE, are used by packaging systems.

PKG_GITDESCRIBE=GITDESCRIBE-PKG

all:		publicdocs-production

install:
	mkdir -p $(INSTDIR)
	rsync -a ../$(PUBLICDIR) $(INSTDIR)
	cp -p $(PKG_GITDESCRIBE) $(INSTDIR)/$(PUBLICDIR)
	chown -Rh stackato.stackato $(HOMEDIR)

uninstall:	
	rm -rf $(INSTDIR)/$(PUBLICDIR)

.PHONY: help clean html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub latex latexpdf text man changes linkcheck doctest

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  push-live  to push update the live docs on docs.stackato.activestate.com"
	@echo "  update     clone kato repo and generate kato-ref.rst"
	@echo "  reupdate   regenerate kato-ref.rst from existing clone (e.g. to test changes)"
	@echo "  html       to make standalone HTML files"
	@echo "  dirhtml    to make HTML files named index.html in directories"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  pickle     to make pickle files"
	@echo "  json       to make JSON files"
	@echo "  htmlhelp   to make HTML files and a HTML help project"
	@echo "  qthelp     to make HTML files and a qthelp project"
	@echo "  devhelp    to make HTML files and a Devhelp project"
	@echo "  epub       to make an epub"
	@echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"

open:
	open _build/html/index.html

push:	html
	mkdir -p /net/nas/data/stackato/doc
	cp -r _build/html/* /net/nas/data/stackato/doc/

clean:
	-rm -rf $(BUILDDIR)/*
	-rm -rf $(UPDATE)

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

dirhtml:
	$(SPHINXBUILD) -b dirhtml $(ALLSPHINXOPTS) $(BUILDDIR)/dirhtml
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/dirhtml."

singlehtml:
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(BUILDDIR)/singlehtml
	@echo
	@echo "Build finished. The HTML page is in $(BUILDDIR)/singlehtml."

pickle:
	$(SPHINXBUILD) -b pickle $(ALLSPHINXOPTS) $(BUILDDIR)/pickle
	@echo
	@echo "Build finished; now you can process the pickle files."

json:
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(BUILDDIR)/json
	@echo
	@echo "Build finished; now you can process the JSON files."

htmlhelp:
	$(SPHINXBUILD) -b htmlhelp $(ALLSPHINXOPTS) $(BUILDDIR)/htmlhelp
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
	      ".hhp project file in $(BUILDDIR)/htmlhelp."

qthelp:
	$(SPHINXBUILD) -b qthelp $(ALLSPHINXOPTS) $(BUILDDIR)/qthelp
	@echo
	@echo "Build finished; now you can run "qcollectiongenerator" with the" \
	      ".qhcp project file in $(BUILDDIR)/qthelp, like this:"
	@echo "# qcollectiongenerator $(BUILDDIR)/qthelp/Stackato.qhcp"
	@echo "To view the help file:"
	@echo "# assistant -collectionFile $(BUILDDIR)/qthelp/Stackato.qhc"

devhelp:
	$(SPHINXBUILD) -b devhelp $(ALLSPHINXOPTS) $(BUILDDIR)/devhelp
	@echo
	@echo "Build finished."
	@echo "To view the help file:"
	@echo "# mkdir -p $$HOME/.local/share/devhelp/Stackato"
	@echo "# ln -s $(BUILDDIR)/devhelp $$HOME/.local/share/devhelp/Stackato"
	@echo "# devhelp"

epub:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) $(BUILDDIR)/epub
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/epub."

latex:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
	      "(use \`make latexpdf' here to do that automatically)."

latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	make -C $(BUILDDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

text:
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(BUILDDIR)/text
	@echo
	@echo "Build finished. The text files are in $(BUILDDIR)/text."

man:
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(BUILDDIR)/man
	@echo
	@echo "Build finished. The manual pages are in $(BUILDDIR)/man."

changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(BUILDDIR)/changes
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(BUILDDIR)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(BUILDDIR)/doctest/output.txt."

update:	
	@echo "Generating kato reference from docopts."
	rm -rf $(UPDATE)
	git clone $(BRANCH_OPT) $(KATO_REPO) $(KATO_DIR)
	gem install --install-dir $(GEM_HOME) docopt --no-rdoc --no-ri
	( RUBYLIB=$(KATO_DIR)/lib:`eval echo $(DOCOPT_LIB)` \
	  GEM_HOME=$(GEM_HOME) \
	  ruby -e 'require "kato/docs/sphinx"; render_kato_ref(ARGV.shift)' admin/reference/kato-ref.rst.erb > admin/reference/kato-ref.rst ; \
	)
	rm -rf $(UPDATE)

client-update:
	@echo "Generating user reference from Jinja2"
	stackato2 help --json | python -c "import sys, json, os; from jinja2 import Environment, FileSystemLoader; help = json.loads(sys.stdin.read()); env = Environment(loader=FileSystemLoader('templates'), trim_blocks=True, lstrip_blocks=True); template = env.get_template('client-ref.rst'); print template.render(commands=help['commands'], sections=help['sections'])" > user/reference/client-ref.rst

reupdate:	
	@echo "Generating kato reference from EXISTING docopts."
	@echo "Not a clean build. Use for debugging docopt only."
	( RUBYLIB=$(KATO_DIR)/lib:`eval echo $(DOCOPT_LIB)` \
	  GEM_HOME=$(GEM_HOME) \
	  ruby -e 'require "kato/docs/sphinx"; render_kato_ref(ARGV.shift)' reference/kato-ref.rst.erb > reference/kato-ref.rst ; \
	)

publicdocs:
	@echo "================================================"
	@echo "Checkout a release branch if this is going live"
	@echo "================================================"
	$(SPHINXBUILD) -b html -t public $(ALLSPHINXOPTS) _build/public-docs

publicdocs-production:
	$(SPHINXBUILD) -b html -t public $(ALLSPHINXOPTS) ../$(PUBLICDIR)

push-live: 
	cp -rf web-server/* $(BUILDDIR)/public-docs/
	@echo "Updating docs at current stackato target: $(STACKATO_LIVE_TARGET)" 
	@echo "...as current user: $(STACKATO_LIVE_USER)" 
	stackato target $(STACKATO_LIVE_TARGET)
	stackato login $(STACKATO_LIVE_USER) --passwd $(STACKATO_DOCS_PASSWD) --group demos
	stackato update -n --path $(BUILDDIR)/public-docs/.
	@echo "Docs updated, resetting to original target..."
	stackato target $(PREV_TARGET)

