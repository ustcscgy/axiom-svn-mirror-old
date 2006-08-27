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

$(srcdir)/Makefile.in: $(srcdir)/Makefile.pamphlet $(top_srcdir)/configure.ac
	cd $(srcdir) && notangle -t8 Makefile.pamphlet > ./Makefile.in

.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_srcdir)/configure
	cd $(abs_top_builddir) && $(SHELL) ./config.status $@
