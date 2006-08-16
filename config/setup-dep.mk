build_setup_files= $(top_srcdir)/configure.ac.pamphlet \
		   $(top_srcdir)/Makefile.pamphlet \
		   $(top_srcdir)/build-setup.sh


$(top_srcdir)/configure: $(build_setup_files)
	cd $(top_srcdir) && \
	notangle ./configure.ac.pamphlet > configure.ac && \
	$(AUTOCONF)

$(srcdir)/Makefile.in: $(build_setup_files)
	cd $(srcdir) && notangle -t8 Makefile.pamphlet > ./Makefile.in

.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_srcdir)/configure
	cd $(top_builddir) && $(SHELL) ./config.status $@
