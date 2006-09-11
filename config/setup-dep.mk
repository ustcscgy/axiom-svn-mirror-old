## ---------------------------------------
## -- Standard boilerplate dependencies --
## ---------------------------------------

build_setup_files= $(top_srcdir)/configure.ac.pamphlet \
		   $(top_srcdir)/Makefile.pamphlet \
		   $(top_srcdir)/build-setup.sh


$(top_srcdir)/configure.ac: $(top_srcdir)/configure.ac.pamphlet
	cd $(top_srcdir) && \
	notangle ./configure.ac.pamphlet > configure.ac

$(top_srcdir)/configure: $(top_srcdir)/configure.ac
	cd $(top_srcdir) && $(AUTOCONF)

$(srcdir)/Makefile.in: $(srcdir)/Makefile.pamphlet 
	cd $(srcdir) && notangle -t8 Makefile.pamphlet > ./Makefile.in

.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_srcdir)/configure \
	  $(top_srcdir)/config/var-def.mk \
	  $(top_srcdir)/config/setup-dep.mk
	cd $(abs_top_builddir) && $(SHELL) ./config.status $(subdir)$@

$(axiom_build_document): $(axiom_src_srcdir)/scripts/document.in
	cd $(abs_top_builddir) && \
	$(SHELL) ./config.status build/scripts/document
