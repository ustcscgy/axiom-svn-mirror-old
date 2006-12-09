## ---------------------------------
## -- Standard Autoconf variables --
## ---------------------------------

SHELL = @SHELL@

prefix = @prefix@
exec_prefix = @exec_prefix@

host = @host@
host_alias = @host_alias@
build = @build@
build_alias = @build_alias@
target = @target@
target_alias = @target_alias@

srcdir = @srcdir@
abs_srcdir = @abs_srcdir@
top_srcdir = @top_srcdir@
abs_top_srcdir = @abs_top_srcdir@

# Notice that there is a bug in Autoconf 2.59 whereby the variable
# top_builddir is not defined.  So avoid to use it directly.  Use
# abs_top_builddir.
builddir = @builddir@
abs_builddir = @abs_builddir@
top_builddir = @top_builddir@
abs_top_builddir = @abs_top_builddir@
datadir = @datadir@


AR = @AR@
CC = @CC@
CFLAGS = @CFLAGS@
OBJEXT = @OBJEXT@
EXEEXT = @EXEEXT@

PACKAGE_STRING = @PACKAGE_STRING@

AUTOCONF = autoconf
AWK = @AWK@
INSTALL = @INSTALL@
install_sh = @install_sh@
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_script = $(install_sh) -c
INSTALL_DATA = @INSTALL_DATA@
INSTALL_PROGRAM = @INSTALL_PROGRAM@
INSTALL_SCRIPT = @INSTALL_SCRIPT@
LN_S = @LN_S@
mkinstalldirs = $(top_srcdir)/config/mkinstalldirs
PATCH = @PATCH@
RANLIB = @RANLIB@
TOUCH = @TOUCH@

# The list of make targets made recursively, by walking sub-directories
# Normally, this is a template generated by Automake, but we don't
# use Automake yet; so, we must do it the hard way.  
# See the corresponding rules in setup-dep.mk
RECURSIVE_TARGETS = all-recursive check-recursive dvi-recursive \
		html-recursive info-recursive install-data-recursive \
		install-exec-recursive install-info-recursive \
		install-recursive installcheck-recursive \
		installdirs-recursive pdf-recursive ps-recursive \
		uninstall-info-recursive uninstall-recursive


## Normally, Automake will substitute the value for this variable.
## But, we don't have Automake yet.  So we punt on it.
mkdir_p = mkdir -p

STAMP = echo timestamp >

## ---------------------
## -- Axiom variables --
## ---------------------

## Absolute path to the toplevel source directory for Axiom.  This is
## almost like Autoconf-standard abs_top_srcdir except that, it retains 
## the same syntactic values in subdirectories.

## Where The Axiom distribution main source files are kept.
## Notice, this is the src/ directory within the toplevel source
## directory 

axiom_src_srcdir = $(top_srcdir)/src
axiom_src_docdir = $(axiom_src_srcdir)/doc
axiom_src_datadir = $(axiom_src_srcdir)/share
axiom_src_algdir = $(axiom_src_srcdir)/algebra

## Where tools for the build machine are built
# Tools like noweb that we occasionally build don't know
# much about Autoconf and related infrastructure.  Therefore
# we do lot by "hand". For the moment, things work if we specify
# paths as absolute, as opposed to relative.  Other parts of
# Axiom also expect absolute paths.
axiom_abs_top_builddir = $(abs_top_builddir)
axiom_abs_builddir = $(abs_top_builddir)/build/$(build)
axiom_abs_build_bindir = $(axiom_abs_builddir)/bin
axiom_abs_build_libdir = $(axiom_abs_builddir)/lib
axiom_abs_build_mandir = $(axiom_abs_builddir)/man
axiom_abs_build_datadir = $(axiom_abs_builddir)/share
axiom_abs_build_texdir = $(axiom_abs_build_datadir)/texmf/tex

axiom_top_builddir = ./$(top_builddir)/build
axiom_builddir = $(axiom_top_builddir)/$(build)
axiom_build_bindir = $(axiom_builddir)/bin
axiom_build_libdir = $(axiom_builddir)/lib
axiom_build_mandir = $(axiom_builddir)/man
axiom_build_docdir = $(axiom_builddir)/doc
axiom_build_datadir = $(axiom_builddir)/share
axiom_build_texdir = $(axiom_build_datadir)/texmf/tex

axiom_configdir = $(top_builddir)/config
axiom_c_macros = $(axiom_configdir)/axiom-c-macros.h

LATEX = @LATEX@

## Staging directory for the target DESTDIR
axiom_targetdir = ./$(top_builddir)/target/$(target)
axiom_target_bindir = $(axiom_targetdir)/bin
axiom_target_libdir = $(axiom_targetdir)/lib
axiom_target_srcdir = $(axiom_targetdir)/src
axiom_target_docdir = $(axiom_targetdir)/doc
axiom_target_datadir = $(axiom_targetdir)/share
axiom_target_texdir = $(axiom_target_datadir)/texmf/tex


## Where Axiom keeps the tarballs for optional components
axiom_optional_srcdir = $(abs_top_srcdir)/zips

AXIOM_X11_CFLAGS = @X_CFLAGS@ 
AXIOM_X11_LDFLAGS = @X_LIBS@ @X_PRE_LIBS@ -lX11 @X_EXTRA_LIBS@

axiom_includes = -I$(axiom_src_srcdir)/include -I$(axiom_configdir)

## Where the staging build directory is found
AXIOM = $(abs_top_builddir)/target/$(target)

## Where to find Axiom data bases.
DAASE = $(axiom_src_datadir)

# What platform is this build for?
SYS = $(target)

TMP=$(axiom_builddir)

## Variables to export to sub-processes of Make
AX_FLAGS = \
	"AXIOM=$(AXIOM)" \
	"SPAD=$(AXIOM)" \
	SYS=$(SYS) \
	"NOISE=$(NOISE)"

## -------------------------------------------
## -- Files generated for the build machine --
## -------------------------------------------
axiom_build_document = $(axiom_top_builddir)/scripts/document
axiom_build_nowebdir = $(axiom_builddir)/noweb

TANGLE = @NOTANGLE@
WEAVE = @NOWEAVE@

GCL = @GCL@


##
NOISE=-o ${TMP}/trace
SINK_NOISE = > /dev/null

##
AXIOMXLROOT=${AXIOM}/compiler

## GCL command to end a session.
BYE=bye

## Clear suffix-based implicit rule table.
.SUFFIXES:
