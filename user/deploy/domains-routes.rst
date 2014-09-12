.. _domains-routes:

.. index:: Domains
.. index:: Routes

Domains & Routes
================

Stackato can serve applications on any domain or virtual hostname,
provided a DNS record exists to resolve the URL to the IP address of
Stackato's network gateway (a Stackato router or load balancer).

The router(s) will recognize the hostnames and domains configured on the
system, and route web requests to the appropriate application
containers.

Web applications are given a "hostname + domain" combination called a
route (i.e. the application URL).

* **hostnames** are attached to most applications
* **domains** belong to :ref:`organizations <orgs-spaces-organizations>`

.. _domains-routes-domains:

Domains
-------

A domain in Stackato is a fully-qualified, second-level or lower domain
name (e.g. "example.com" or "stackato.example.com"). There are two
categories of these:

* **Shared Domains**: domains set up by a Stackato administrator which
  are available globally to all organizations. Applications deployed by
  any organization can use these domains for their URLs. 
  
* **Owned Domains**: domains which can only be used by applications
  deployed in a specific organization. Organization managers can add
  these domains in the **Domains** view or using the :ref:`stackato
  create-domain <command-create-domain>` command. 

Spaces within an organization inherit all its domains. Applications
within these spaces can use any of these domains to make application
routes.

.. _domains-routes-routes:

Routes
------

A route is an application URL. Usually, this is made up of a virtual
hostname followed by a domain (e.g. "myapp.example.com") or sub-domain
(e.g. "myapp.myorg.example.com"). An application can be deployed with a
blank hostname, in which case its URL will consist only of the mapped
domain ("example.com"). 

Routes must be globally unique, and Stackato enforces this if you
attempt to launch an application with the same route as an existing
application. Such namespace collisions can be avoided by assigning
unique domains (or sub-domains) to each organization.


