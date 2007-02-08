sinclude(config/axiom.m4)
AC_INIT([Axiom build-improvements branch], [2006-12-14], 
        [axiom-developer@nongnu.org])
AC_CONFIG_AUX_DIR(config)
AC_CONFIG_MACRO_DIR(config)
AC_CONFIG_HEADERS([config/axiom-c-macros.h])
# AM_INIT_AUTOMAKE([foreign])
AC_PREREQ([2.59])

AC_CONFIG_SRCDIR(src/Makefile.pamphlet)

axiom_src_subdirs="lib lisp boot interp share algebra input etc doc"
AC_SUBST(axiom_src_subdirs)

AC_CANONICAL_SYSTEM
if test $build != $host; then
   AC_MSG_WARN([Cross compilation is not supported.])
   AC_MSG_WARN([Please notify axiom-developer@nongnu.org if you succeed.])
fi
## Where tools for the build platform are sequestered
axiom_build_sharedir=$axiom_builddir/share

## Accumulate list of utils needed for the build platform
## It is vital that noweb is present in the build environement.
axiom_all_prerequisites=

case $build in
    *linux*)
        # GNU/Linux systems come equipped with GNU Make, called `make'
        AC_CHECK_PROGS([MAKE], [make],
                       [AC_MSG_ERROR([Make utility missing.])])
        ;;
    *)
        # Other systems tend to spell it `gmake' and such
        AC_CHECK_PROGS([MAKE], [gmake make],
                       [AC_MSG_ERROR([Make utility missing.])])
        if !$MAKE --version | grep 'GNU' 2>/dev/null; then
            AC_MSG_ERROR([Axiom build system needs GNU Make.])
        fi
        ;;
esac

## Make sure the C compiler is from GCC
AC_PROG_CC
if test x$GCC != xyes; then
    AC_MSG_ERROR([We need a C compiler from GCC])
fi
axiom_cflags="-O2 -fno-strength-reduce -Wall -D_GNU_SOURCE"
AC_SUBST(axiom_cflags)

## What is the extension of object files on this platform?
AC_OBJEXT

AC_PROG_INSTALL
AC_PROG_LN_S
AC_CHECK_PROG([TOUCH], [touch],
              [touch], [AC_MSG_ERROR(['touch' program is missing.])])

case $build in
     *-solaris9)
        AC_CHECK_PROG([AWK], [gawk], 
                      [gawk], [AC_MSG_ERROR([Axiom needs gawk])])

        AC_CHECK_PROG([PATCH], [gpatch],
                      [gptach], [AC_MSG_ERROR([Axiom needs gpatch])]) 
        ;;

      *)
        AC_PROG_AWK

        AC_CHECK_PROGS([PATCH], [gpatch patch], 
                       [AC_MSG_ERROR([Axiom needs a patch program])])
        ;;
esac

AC_PROG_RANLIB
AC_CHECK_PROG([AR], [ar], [ar], [AC_MSG_ERROR([program 'ar' is missing])])

AC_PATH_PROG([LATEX], [latex])
AC_CHECK_PROG([MAKEINDEX], [makeindex])
if test -n "$LATEX"; then \
    axiom_src_all="$axiom_src_all all-book"
    axiom_src_subdirs="$axiom_src_subdirs booklets"
    AXIOM_MAKEFILE([src/booklets/Makefile])
else
    AC_MSG_NOTICE([Documentation is disabled.])
fi

## -------------------------
## -- Which noweb to use? --
## -------------------------
## 
axiom_use_noweb=
AC_ARG_WITH([noweb], [  --with-noweb          assume noweb is available],
            [case $withval in
                yes|no) axiom_use_noweb=$withval ;;
                *) AC_MSG_ERROR([erroneous value for --with-noweb]) ;;
             esac])

## Check for notangle and noweb if we are not explicitly told
## to build noweb from Axiom sources.
if test x$axiom_use_noweb != xno; then
    AC_PATH_PROG([NOTANGLE], [notangle])
    AC_PATH_PROG([NOWEAVE], [noweave])

    ## Ensure the build environment is consistent with specified option.
    if test x$axiom_use_noweb = xyes \
        && test -z $NOTANGLE -o -z $NOWEAVE; then
        AC_MSG_ERROR([noweb utils are missing but --with-noweb is specified])
    fi
fi

## In case noweb is missing we need to build our own.
if test -z $NOTANGLE -o -z $NOWEAVE ; then
    NOTANGLE='$(axiom_build_bindir)/notangle'
    NOWEAVE='$(axiom_build_bindir)/noweave'
    axiom_all_prerequisites="$axiom_all_prerequisites all-noweb"
    AC_SUBST(NOTANGLE)
    AC_SUBST(NOWEAVE)
fi

## -----------------------
## -- Which GCL to use? --
## -----------------------
##
## By default, we assume that GCL is not present in the build
## environment, so we should roll our own.  That is a reasonable
## assumption since GCL does not seem to be as widespread as one
## would like to think.

axiom_use_gcl=
AC_ARG_WITH([gcl], [  --with-gcl              assume GCL is available],
            [case $withval in
                yes|no) axiom_use_gcl=$withval ;;
                *) AC_MSG_ERROR([erroneous value for --with-gcl]) ;;
             esac])

## Check for GCL only if we're told to or if we should guess
if test x$axiom_use_gcl != xno; then
    AC_PATH_PROG([GCL], [gcl])
else
    ## Make sure GCL is Autoconf-substituted in generated files
    AC_SUBST(GCL)
    :
fi

## If we were told to use system-installed GCL, but the 'gcl' command
## is missing from the build environment, then something is wrong.
if test -z $GCL; then
    if test x$axiom_use_gcl = xyes; then
        AC_MSG_ERROR([--with-gcl is specified but GCL is missing])
    fi

    GCL='$(axiom_build_bindir)/gcl'
    ## Make sure GCL is on the list of required tools
    axiom_all_prerequisites="$axiom_all_prerequisites all-gcl"
fi

## The following is a horrible to arrange for GCL to successfully
## rebuild symbol tables with "rsym" on Windows platform.  It should
## go away as soon as GCL upstream is fixed.
case $target in
    *mingw*)
        axiom_gcl_rsym_hack='d=`echo "(format nil \"~a\" si::*system-directory*)" | $(GCL) | grep "/gcl.*/" | sed -e "s,\",,g"`; cp $$d/rsym$(EXEEXT) .'
        ;;
    *) 
        axiom_gcl_rsym_hack=':'
        ;;
esac
AC_SUBST(axiom_gcl_rsym_hack)

AC_SUBST(axiom_all_prerequisites)

# FIXME: Move this out of here.  
# The core runtime is always built.
axiom_c_runtime=core
AC_SUBST(axiom_c_runtime)

AC_CHECK_HEADERS([signal.h],
                 [],
                 [AC_MSG_ERROR([Axiom needs signal support.])])
AC_CHECK_DECLS([sigaction], [], [], 
               [#include <signal.h>])
AC_CHECK_HEADERS([sys/stat.h],
                 [],
                 [AC_MSG_ERROR([Axiom needs <sys/stat.h>.])])
AC_CHECK_HEADERS([unistd.h], [],
                 [AC_MSG_ERROR([Axiom needs <unistd.h>])])
AC_CHECK_DECLS([getuid, geteuid, getgid, getegid], [], [],
               [#include <unistd.h>])

AC_CHECK_DECLS([kill], [], [],
               [#include <signal.h>])
case $host in
    *mingw*)
        AC_CHECK_HEADERS([winsock2.h],
                        [axiom_host_has_socket=yes],
                        [])
        axiom_c_runtime_extra="-lwsock32"
        ;;
    *)
        AC_CHECK_HEADERS([sys/socket.h], 
                         [axiom_host_has_socket=yes],
                         [])
        ;;
esac
if test x$axiom_host_has_socket != xyes; then \
    AC_MSG_ERROR([Axiom needs suport for sockets.])
fi
AC_SUBST(axiom_c_runtime_extra)

AC_EGREP_HEADER([has_af_local],
                [#if HAVE_SYS_SOCKET_H
                 #  include <sys/socket.h>
                 #else
                 #  include <winsock2.h>
                 #endif
                 #ifdef AF_LOCAL
                   has_af_local
                 #endif],
                 [AC_DEFINE([HAVE_AF_LOCAL], [1], [Host has AF_LOCAL])])


AC_EGREP_HEADER([has_af_unix],
                [#if HAVE_SYS_SOCKET_H
                 #  include <sys/socket.h>
                 #else
                 #  include <winsock2.h>
                 #endif
                 #ifdef AF_UNIX
                   has_af_unix
                 #endif],
                 [AC_DEFINE([HAVE_AF_UNIX], [1], [Host has AF_UNIX])])

AC_CHECK_HEADERS([sys/wait.h])

if test x"$ac_cv_header_sys_wait_h" = xyes; then \
    AC_CHECK_DECLS([wait], 
                   [], 
                   [], 
                   [#include <sys/wait.h>])
fi

AC_CHECK_DECLS([fork],
               [],
               [],
               [#include <unistd.h>])

if test x"$ac_cv_have_decl_fork" = xyes \
     -a x"$ac_cv_have_decl_wait" = xyes; then \
    axiom_c_runtime="$axiom_c_runtime terminal_io"
    axiom_src_all="$axiom_src_all all-sman all-clef"
    axiom_src_subdirs="$axiom_src_subdirs clef sman"
    AXIOM_MAKEFILE([src/clef/Makefile])
    AXIOM_MAKEFILE([src/sman/Makefile])
else
    AC_MSG_NOTICE([Superman component is disabled.])
fi

axiom_src_all="all-input $axiom_src_all"
AC_PATH_XTRA
## Output directives for the C compiler
AC_SUBST(X_CLFAGS)
## Output directives for the linker
AC_SUBST(X_LIBS)
## Output any extra libraries required by X11
AC_SUBST(X_EXTRA_LIBS)

## Finally, output the list of libraries that need to appear before -lX11
## Some part of Axiom depends on Xpm.  That library has kind uncertain
## future.  At some point in the past, it was deprecated, to be
## replaced by xpm-nox; then came back again.  So, its support may
## vary from system to system.  For the moment, we assume that if X11
## is found then, Xpm is already present.  Though, clearly that is a
## very optimistic assumption.  Long term, Axiom should get rid of
## dependence on Xpm.  A nearly fool-proof test would be probably
## inspired by AC_PATH_XTRA.  I don't have time to get to that 
## complication right now.  Will fix later.
X_PRE_LIBS="-lXpm $X_PRE_LIBS"
AC_SUBST(X_PRE_LIBS)

## If the system supports X11, then build graphics and hyperdoc
if test -z $no_x; then
    axiom_c_runtime="$axiom_c_runtime graphics"
    axiom_src_all="$axiom_src_all all-graph"
    axiom_src_subdirs="$axiom_src_subdirs graph"
    AXIOM_MAKEFILE([src/graph/Makefile])
    AXIOM_MAKEFILE([src/graph/Gdraws/Makefile])
    AXIOM_MAKEFILE([src/graph/view2D/Makefile])
    AXIOM_MAKEFILE([src/graph/view3D/Makefile])
    AXIOM_MAKEFILE([src/graph/viewAlone/Makefile])
    AXIOM_MAKEFILE([src/graph/viewman/Makefile])
else
    AC_MSG_NOTICE([The Gaphics and HyperDoc components are disabled.])
fi
AC_SUBST(axiom_src_all)
if test -z $no_x; then
   AC_CHECK_HEADER([regex.h], 
                   [axiom_src_all="$axiom_src_all all-hyper"
                    axiom_src_subdirs="$axiom_src_subdirs hyper"
                    AXIOM_MAKEFILE([src/hyper/Makefile])], 
                   [AC_MSG_NOTICE([HyperDoc is disabled.])])
fi

axiom_host_has_libbfd=
AC_CHECK_HEADER([bfd.h])
AC_HAVE_LIBRARY([bfd], [axiom_host_has_libbfd=yes])

axiom_gcl_bfd_option=
if test x"$ac_cv_header_bfd_h" = xyes \
    && test x"$axiom_host_has_libbfd" = xyes; then
    axiom_gcl_bfd_option="--disable-dynsysbfd"
else
    axiom_gcl_bfd_option="--disable-statsysbfd --enable-locbfd"
fi
# axiom_gcl_mm_option="--enable-maxpage=256*1024"
axiom_gcl_x_option="--disable-tkconfig --disable-x --disable-xgcl"

PFL=
CCF="-O2 -fno-strength-reduce -Wall -D_GNU_SOURCE"
LDF=
LISP=lsp

case $target in
    *bsd*)
        AC_DEFINE([BSDplatform], [], [BSD flavour])
        CCF="-O2 -pipe -fno-strength-reduce -Wall -D_GNU_SOURCE -I/usr/local/include"
        LDF="-L/usr/local/lib"
        ;;
    windows)
        AC_DEFINE([MSYSplatform], [], [MS])
        SRCDIRS=bootdir interpdir sharedir algebradir etcdir docdir inputdir
        ;;
    *linux*)
        AC_DEFINE([LINUXplatform], [], [Linux flavour])
        ;;
    *solaris*)
        AC_DEFINE([SUNplatform], [], [SunOS flavour])
        ;;
    powerpc*darwin*)
        AC_DEFINE([MACOSXplatform], [], [MACOX flavour])
        CCF="-O2 -fno-strength-reduce -Wall -D_GNU_SOURCE \
            -I/usr/include -I/usr/include/sys"
        axiom_gcl_bfd_option="--disable-statsysbfd \
                                --enable-machine=powerpc-macosx"
        axiom_gcl_mm_option="--enable-vssize=65536*2"
        ;;
esac

GCLOPTS="$axiom_gcl_bfd_option $axiom_gcl_mm_option $axiom_gcl_x_option"

AC_SUBST(PLF)
AC_SUBST(CCF)
AC_SUBST(LDF)
AC_SUBST(LISP)
AC_SUBST(GCLOPTS)
AXIOM_MAKEFILE([Makefile])
AXIOM_MAKEFILE([src/Makefile])
AXIOM_MAKEFILE([src/lib/Makefile])
AXIOM_MAKEFILE([src/lisp/Makefile])
AXIOM_MAKEFILE([src/boot/Makefile])
AXIOM_MAKEFILE([src/interp/Makefile])
AXIOM_MAKEFILE([src/share/Makefile])
AXIOM_MAKEFILE([src/algebra/Makefile])
AXIOM_MAKEFILE([src/input/Makefile])
AXIOM_MAKEFILE([src/etc/Makefile])
AXIOM_MAKEFILE([src/doc/Makefile])


## We now generate the "document" script and support files at configure time.
## We put them in the build directory because they are intended to be 
## build support utils only.
AC_CONFIG_FILES(build/scripts/document:$srcdir/src/scripts/document.in, \
                [chmod +x build/scripts/document])

AC_OUTPUT

## Generate rules for Algebra bootstrap files.
echo -n "building list of Algebra bootstrap files..."
egrep ".*BOOTSTRAP>>=" $srcdir/src/algebra/*.spad.pamphlet \
    | sort | uniq | \
  while IFS=':' read spad_file chunk_desc; do
      chunk_desc=`echo $chunk_desc | sed -e 's,<<,,' -e 's,>>=,,'`
      set $chunk_desc; bootstrap_file=$1
      cat >> src/algebra/tmp-extract-lisp-files.mk <<EOF
$bootstrap_file: \$(srcdir)/`basename $spad_file`; \
    \$(EXTRACT_BOOTSTRAP_FILE)
EOF
  done 
echo done
$srcdir/config/move-if-change \
    src/algebra/tmp-extract-lisp-files.mk \
    src/algebra/extract-lisp-files.mk

## Generate rules to extrad SPAD type definitions from pamphlets.
echo -n "extracting list of SPAD type definitions..."
egrep '<<(category|domain|package) .*>>=' \
    $srcdir/src/algebra/*.spad.pamphlet \
    | sort | uniq | \
    while IFS=':' read spad_file chunk_desc; do 
        chunk_desc=`echo $chunk_desc | sed -e 's,<<,,' -e 's,>>=,,'`
        set $chunk_desc; spad_abbrev=$2
        cat >> src/algebra/tmp-extract-spad.mk <<EOF
$spad_abbrev.spad: \$(srcdir)/`basename $spad_file` ; \
    @\$(axiom_build_document) --output=\$@ --tangle="$chunk_desc" \$<
EOF
    done 
echo done
$srcdir/config/move-if-change \
    src/algebra/tmp-extract-spad.mk src/algebra/extract-spad.mk

