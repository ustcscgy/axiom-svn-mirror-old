sinclude(config/axiom.m4)
AC_INIT([Axiom build-improvements branch], [2006-11-09], 
        [axiom-developer@nongnu.org])
axiom_top_srcdir=`cd $srcdir && pwd`
AC_SUBST(axiom_top_srcdir)
AC_CONFIG_AUX_DIR(config)
AC_CONFIG_MACRO_DIR(config)
# AM_INIT_AUTOMAKE([foreign])
AC_PREREQ([2.59])

AC_CONFIG_SRCDIR(src/Makefile.pamphlet)

AC_CANONICAL_SYSTEM

## Where tools for the build machine are built
axiom_builddir=`pwd`/build/$build
axiom_build_bindir=$axiom_builddir/bin
axiom_build_libdir=$axiom_builddir/lib
axiom_build_sharedir=$axiom_builddir/share
AC_SUBST(axiom_builddir)
AC_SUBST(axiom_build_bindir)
AC_SUBST(axiom_build_libdir)

## Prefix for the staging target inistallation directory
axiom_targetdir=`pwd`/target/$target
AC_SUBST(axiom_targetdir)

if test $host != $build -o $host != $target; then
   AC_MSG_ERROR([Sorry, only native builds are currently supported])
fi

## Accumulate list of utils needed for the build platform
axiom_required_build_utils=

AC_CHECK_PROG([MAKE], [make],
              [make], [AC_MSG_ERROR(['make' program missing.])])

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

        AC_CHECK_PROG([TAR], [gtar], 
                      [gtar], [AC_MSG_ERROR([Axiom needs gtar])])

        AC_CHECK_PROG([PATCH], [gpatch],
                      [gptach], [AC_MSG_ERROR([Axiom needs gpatch])]) 
        ;;

      *)
        AC_PROG_AWK

        AC_CHECK_PROGS([TAR], [gtar tar], 
                       [AC_MSG_ERROR([Axiom needs a tar program])])

        AC_CHECK_PROGS([PATCH], [gpatch patch], 
                       [AC_MSG_ERROR([Axiom needs a patch program])])
        ;;
esac

AC_PROG_RANLIB
AC_CHECK_PROG([AR], [ar], [ar], [AC_MSG_ERROR([program 'ar' is missing])])

AC_CHECK_PROG([LATEX], [latex],
              [latex], [AC_MSG_ERROR([Axiom needs a latex program.])])
AC_CHECK_PROG([MAKEINDEX], [makeindex],
              [makeindex], [AC_MSG_ERROR([Axiom needs a makeindex program])])

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
    NOTANGLE=$axiom_build_bindir/notangle
    NOWEAVE=$axiom_build_bindir/noweave
    AC_SUBST(NOTANGLE)
    AC_SUBST(NOWEAVE)
fi
axiom_required_build_utils="$axiom_required_build_utils $NOTANGLE $NOWEAVE"

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

    GCL=$axiom_build_bindir/gcl

    ## FIXME: add gcl to axiom_required_build_utils
fi

AC_SUBST(axiom_required_build_utils)

AC_CHECK_HEADER([regex.h], [], [AC_MSG_ERROR([Axiom needs <regex.h>])])

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

AXIOM=$axiom_targetdir
AC_SUBST(AXIOM)

SRC_SUBDIRS="boot interp share algebra etc clef doc graph sman hyper input "
AC_SUBST(SRC_SUBDIRS)

axiom_host_has_bfd_h=
axiom_host_has_libbfd=
AC_CHECK_HEADER([bfd.h], [axiom_host_has_bfd_h=yes])
AC_HAVE_LIBRARY([bfd], [axiom_host_has_libbfd=yes])

axiom_gcl_bfd_option=
if test x"$axiom_host_has_bfd_h" = xyes \
    && test x"$axiom_host_has_libbfd" = xyes; then
    axiom_gcl_bfd_option="--enable-statsysbfd"
else
    axiom_gcl_bfd_option="--disable-statsysbfd --enable-locbfd"
fi

GCLOPTS="--enable-vssize=65536*2 --disable-dynsysbfd \
            $axiom_gcl_bfd_option --enable-maxpage=256*1024"

PFL=
CCF="-O2 -fno-strength-reduce -Wall -D_GNU_SOURCE -D\${PLF}"
LDF=
LISP=lsp

case $target in
    *bsd*)
        PLF=BSDplatform
        CCF="-O2 -pipe -fno-strength-reduce -Wall -D_GNU_SOURCE -D${PLF} -I/usr/local/include"
        LDF="-L/usr/local/lib"
        ;;
    windows)
        PLF=MSYSplatform
        SRCDIRS=bootdir interpdir sharedir algebradir etcdir docdir inputdir
        ;;
    *linux*)
        PLF=LINUXplatform
        ;;
    *solaris*)
        PLF=SUNplatform
        ;;
    *darwin*)
        PLF=MACOSXplatform
        CCF="-O2 -fno-strength-reduce -Wall -D_GNU_SOURCE -D${PLF} \
            -I/usr/include -I/usr/include/sys"
        GCLOPTS="--enable-vssize=65536*2 --enable-maxpage=256*1024 --disable-locbfd \
            --disable-statsysbfd  --enable-custreloc --disable-tkconfig \
            --enable-machine=pwerpc-macosx"
        ;;
esac

AC_SUBST(PLF)
AC_SUBST(CCF)
AC_SUBST(LDF)
AC_SUBST(LISP)
AC_SUBST(GCLOPTS)
AXIOM_MAKEFILE([Makefile])
AXIOM_MAKEFILE([lsp/Makefile])
AXIOM_MAKEFILE([src/Makefile])
AXIOM_MAKEFILE([src/lib/Makefile])
AXIOM_MAKEFILE([src/boot/Makefile])
AXIOM_MAKEFILE([src/interp/Makefile])
AXIOM_MAKEFILE([src/share/Makefile])
AXIOM_MAKEFILE([src/algebra/Makefile])
AXIOM_MAKEFILE([src/etc/Makefile])
AXIOM_MAKEFILE([src/clef/Makefile])
AXIOM_MAKEFILE([src/doc/Makefile])
AXIOM_MAKEFILE([src/graph/Makefile])
AXIOM_MAKEFILE([src/graph/Gdraws/Makefile])
AXIOM_MAKEFILE([src/graph/view2D/Makefile])
AXIOM_MAKEFILE([src/graph/view3D/Makefile])
AXIOM_MAKEFILE([src/graph/viewAlone/Makefile])
AXIOM_MAKEFILE([src/graph/viewman/Makefile])
AXIOM_MAKEFILE([src/sman/Makefile])
AXIOM_MAKEFILE([src/hyper/Makefile])
AXIOM_MAKEFILE([src/input/Makefile])
AXIOM_MAKEFILE([src/booklets/Makefile])


## We now generate the "document" script and support files at configure time.
## We put them in the build directory because they are intended to be 
## build support utils only.
AC_CONFIG_FILES(build/scripts/document:$srcdir/src/scripts/document.in, \
                [chmod +x build/scripts/document])

# Where to find nowed utilities.  The current settings mimics the old
# settings, but they are not really correct.
axiom_build_notangle=$AXIOM/bin/lib/notangle
axiom_build_noweave=$AXIOM/bin/lib/noweave
AC_SUBST(axiom_build_notangle)
AC_SUBST(axiom_build_noweave)

AC_OUTPUT
