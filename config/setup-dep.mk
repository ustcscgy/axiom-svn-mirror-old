## ---------------------------------------
## -- Standard boilerplate dependencies --
## ---------------------------------------

# Recursive rules, usually automatically generated by Automake.
# Since we do not use (yet) Automake, we mimic the behaviour as
# close as possible.
# Recursive wall of sub-directories is based on the variable
# SUBDIRS.  That variable usually contains the of sub-directories
# to be made in depth-first postfix.  However, that order can
# be changed to depth-first prefix by explicitly including "."
# in SUBDIRS.  Rules ending with '-ax' are those specific to the
# the current directory.  Notice that the '-ax' rules are similar 
# to Automake generated '-am'.
.PHONY: $(RECURSIVE_TARGETS)
$(RECURSIVE_TARGETS):
	failcmd='exit 1'; \
	for f in $(MAKFLAGS); do \
	   case $$f in \
	      *=* | --[!k]*) ;; \
	      *k*) failcmd='fail=yes';; \
	   esac; \
	done; \
	dot_seen=no; \
	target=`echo $@ | sed s/-recursive//`; list='$(SUBDIRS)'; \
	for subdir in $$list; do \
	   echo "Making $$target in $$subdir"; \
	   if test "$$subdir" = "."; then \
	      dot_seen=yes; \
	      local_target="$$target-ax"; \
	   else \
	      local_target="$$target"; \
	   fi; \
	   (cd $$subdir && $(ENV) $(MAKE) $$local_target) || eval $$failcmd; \
	done; \
	if test "$$dot_seen" = "no"; then \
	   $(ENV) $(MAKE) "$$target-ax" || exit 1; \
	fi; test -z "$$failcmd"

## Rules to make DVI files from pamphlets

.PRECIOUS: $(builddir)/%.tex
.PRECIOUS: $(builddir)/%.dvi

DVI_FILES = $(addprefix $(axiom_target_docdir)/$(subdir), \
		$(pamphlets:.pamphlet=.dvi))

pamphlets_SOURCES = $(addprexofix $(srcdir)/, $(pamphlets))

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
	$(TANGLE) ./configure.ac.pamphlet > configure.ac

$(top_srcdir)/configure: $(top_srcdir)/configure.ac \
			 $(top_srcdir)/config/axiom.m4
	cd $(top_srcdir) && $(AUTOCONF)


## Rules for regenerating Makefile.in from pamphlets.
$(srcdir)/Makefile.in: $(srcdir)/Makefile.pamphlet 
	cd $(srcdir) && $(TANGLE) -t8 Makefile.pamphlet > ./Makefile.in

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
.PHONY: mostlyclean-generic mostlyclean-local mostlyclean mostlyclean-ax
mostlyclean-generic:
	-rm -f *~
	-rm -f *.log *.aux *.toc

mostlyclean: mostlyclean-ax
mostlyclean-ax: mostlyclean-generic mostlyclean-local

.PHONY: clean-generic clean-local clean clean-ax
clean-generic: mostlyclean-generic
	-rm -f *.tex *.dvi

clean: clean-ax
clean-ax: clean-generic clean-local

.PHONY: distclean-generic distclean-local distclean distclean-ax
distclean-generic: clean-generic
	-rm -rf $(axiom_target_docdir)/$(subdir)

distclean: distclean-ax
distclean-ax: distclean-generic distclean-local
