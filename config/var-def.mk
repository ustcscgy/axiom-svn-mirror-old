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
top_builddir = @top_builddir@
abs_top_builddir = @abs_top_builddir@
datadir = @datadir@

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
mkinstalldirs = $(install_sh) -d
INSTALL_DATA = @INSTALL_DATA@
INSTALL_PROGRAM = @INSTALL_PROGRAM@
INSTALL_SCRIPT = @INSTALL_SCRIPT@
PATCH = @PATCH@
RANLIB = @RANLIB@
TAR = @TAR@

mkdir_p = @mkdir_p@

STAMP = echo timestamp >

