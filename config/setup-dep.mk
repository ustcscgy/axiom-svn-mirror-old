## ---------------------------------------
## -- Standard boilerplate dependencies --
## ---------------------------------------

## Rules to make DVI files from pamphlets

.PRECIOUS: $(builddir)/%.tex
.PRECIOUS: $(builddir)/%.dvi

DVI_FILES = $(addprefix $(axiom_target_docdir)/$(subdir), \
		$(pamphlets:.pamphlet=.dvi))

pamphlets_SOURCES = $(addprefix $(srcdir)/, $(pamphlets))

.PHONY: dvi
dvi: $(DVI_FILES)

$(axiom_target_docdir)/$(subdir)%.dvi: $(builddir)/%.dvi
	$(INSTALL_DATA) $< $@

$(builddir)/%.dvi: $(axiom_build_texdir)/axiom.sty

$(builddir)/%.dvi: $(builddir)/%.tex 
	$(axiom_build_document) --latex $< $(SINK_NOISE)

$(builddir)/%.tex: $(srcdir)/%.pamphlet
	$(axiom_build_document) --weave --output=$@ $<


## Rules for regenerating configure.ac and configure from
## pamphlet files.  
$(top_srcdir)/configure.ac: $(top_srcdir)/configure.ac.pamphlet
	cd $(top_srcdir) && \
	notangle ./configure.ac.pamphlet > configure.ac

$(top_srcdir)/configure: $(top_srcdir)/configure.ac \
			 $(top_srcdir)/config/axiom.m4
	cd $(top_srcdir) && $(AUTOCONF)


## Rules for regenerating Makefile.in from pamphlets.
$(srcdir)/Makefile.in: $(srcdir)/Makefile.pamphlet 
	cd $(srcdir) && notangle -t8 Makefile.pamphlet > ./Makefile.in

.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_srcdir)/config/var-def.mk \
	  $(top_srcdir)/config/setup-dep.mk \
	  $(abs_top_builddir)/config.status
	cd $(abs_top_builddir) && $(SHELL) ./config.status $(subdir)$@

$(axiom_build_document): $(axiom_src_srcdir)/scripts/document.in
	cd $(abs_top_builddir) && \
	$(SHELL) ./config.status build/scripts/document

## Cleanup.
##   Each Makefile is responsible of defining targets named
##   mostlyclean-local, clean-local, and distclean-local.
.PHONY: mostlyclean-generic mostlyclean-local mostlyclean
mostlyclean-generic:
	-rm -f *~
	-rm -f *.log *.aux *.toc

mostlyclean: mostlyclean-generic mostlyclean-local

.PHONY: clean-generic clean-local clean
clean-generic: mostlyclean-generic
	-rm -f *.tex *.dvi

clean: clean-generic clean-local

.PHONY: distclean-generic distclean-local distclean
distclean-generic: clean-generic
	-rm -rf $(axiom_target_docdir)/$(subdir)

distclean: distclean-generic distclean-local
