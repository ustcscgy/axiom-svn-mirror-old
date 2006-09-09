## ---------------------------------
## -- Standard Autoconf variables --
## ---------------------------------

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

builddir = @builddir@
abs_builddir = @abs_builddir@
top_builddir = @top_builddir@
abs_top_builddir = @abs_top_builddir@
datadir = @datadir@

## The variable "subdir" is usually computed by Automake in fully
## evaluated form.  However, we do not use Automake yet.  Consequently,
## we must do this "by hand" ourselves.  The value of subdir is either
## the empty string (for the toplevel Makefile, i.e. the one at the same
## level as configure), or a relative path from the toplevel source 
## directory to the directory that contains the Makefile template being
## instantiated.  We make the assumption that the pathnames do not
## contain the character '|'.
subdir=`echo ${abs_srcdir}/ | sed -e 's|$(axiom_top_srcdir)/||'`


AR = @AR@
CC = @CC@
CFLAGS = @CFLAGS@
OBJEXT = @OBJEXT@

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
TAR = @TAR@
TOUCH = @TOUCH@

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

axiom_top_srcdir = @axiom_top_srcdir@

axiom_src_srcdir = $(axiom_top_srcdir)/src
axiom_src_docdir = $(axiom_src_srcdir)/doc
axiom_src_algdir = $(axiom_src_srcdir)/algebra

## Where tools for the build machine are built
axiom_top_builddir = @abs_top_builddir@/build
axiom_builddir = @axiom_builddir@
axiom_build_bindir = @axiom_build_bindir@
axiom_build_libdir = @axiom_build_libdir@
axiom_build_mandir = $(axiom_builddir)/man
axiom_build_docdir = $(axiom_builddir)/doc
axiom_build_texdir = $(axiom_builddir)/share/texmf/tex

LATEX = @LATEX@

## Staging directory for the target DESTDIR
axiom_targetdir = @axiom_targetdir@
axiom_target_bindir = $(axiom_targetdir)/bin
axiom_target_libdir = $(axiom_targetdir)/lib
axiom_target_docdir = $(axiom_targetdir)/doc
axiom_target_texdir = $(axiom_targetdir)/share/texmf/tex


## Where Axiom keeps the tarballs for optional components
axiom_optional_srcdir = $(abs_top_srcdir)/zips

AXIOM_X11_CFLAGS = @X_CFLAGS@ 
AXIOM_X11_LDFLAGS = @X_LIBS@ @X_PRE_LIBS@ -lX11 @X_EXTRA_LIBS@

## -------------------------------------------
## -- Files generated for the build machine --
## -------------------------------------------
axiom_build_document = @abs_top_builddir@/build/scripts/document
axiom_build_nowebdir = $(axiom_builddir)/noweb

TANGLE = @NOTANGLE@
WEAVE = @NOWEAVE@

GCL = @GCL@


##
SINK_NOISE = > /dev/null
