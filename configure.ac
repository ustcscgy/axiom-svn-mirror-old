AC_INIT([Axiom silver branch], [2006-07-15], [axiom-developer@nongnu.org])

AC_CONFIG_AUX_DIR(config)

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

if test $host != $build -o $host != $target; then
   AC_MSG_ERROR([Sorry, only native builds are currently supported])
fi

AC_PROG_CC
AC_PROG_INSTALL

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

AC_CHECK_PROG([MAKE], [make],
              [make], [AC_MSG_ERROR(['make' program missing.])])

AC_PROG_RANLIB

AC_CHECK_PROG([TOUCH], [touch],
              [touch], [AC_MSG_ERROR(['touch' program is missing.])])

AC_CHECK_PROG([LATEX], [latex],
              [latex], [AC_MSG_ERROR([Axiom needs a latex program.])])

## Accumulate list of utils needed for the build machine
axiom_required_build_utils=

axiom_use_noweb=
AC_ARG_WITH([noweb], [assume noweb is present in the build environment],
            [case $withval in
                yes|no) axiom_use_noweb=$withval ;;
                *) AC_MSG_ERROR([erroneous value for --with-noweb]) ;;
             esac])

## Check for notangle and noweb if we are not explicitly told
## to build noweb from Axiom sources.
if test x$axiom_use_noweb != xno; then
    AC_CHECK_PROG([NOTANGLE], [notangle], [notangle])
    AC_CHECK_PROG([NOWEAVE], [noweave], [noweave])

    ## Ensure the build environment is consistent with specified option.
    if test x$axiom_use_noweb = xyes \
        && test -z $NOTANGLE -o -z $NOWEAVE; then
        AC_MSG_ERROR([noweb utils are missing but --with-noweb is specified])
    fi
## Otherwise, either noweb is missing from the build environment or
## we are told not to check.  In both cases, we do need noweb; so
## tell the Makefiles to build one and use it.
else
    NOTANGLE=$axiom_build_bindir/notangle
    NOWEAVE=$axiom_build_bindir/noweave
    axiom_required_build_utils="$axiom_required_build_utils noweb"
    AC_SUBST(NOTANGLE)
    AC_SUBST(NOWEAVE)
fi

AC_SUBST(axiom_required_build_utils)

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

if test -f /etc/redhat-release; then 
   SYSNAME=`cat /etc/redhat-release` 
   if test "$SYSNAME" = "Fedora Core release 3 (Heidelberg)"; then
       SYSNAME=fedora3
   fi
   AC_MSG_NOTICE([SYSNAME=$SYSNAME])
fi
if test "$SYSNAME" != "fedora3"; then
   SYSNAME=`uname -s`
   AC_MSG_NOTICE([$SYSNAME])
   case "$SYSNAME" in
      Linux)
         SYSNAME=linux ;;
      MINGW32_NT-5.1)
         SYSNAME=windows ;;
      SunOS)
         SYSNAME=solaris9 ;;
      freebsd)
         ;;
      *)
         AC_MSG_NOTICE([Your system name is $SYSNAME])
         AC_MSG_NOTICE([We do not know how to build for this kind of system])
         AC_MSG_ERROR([Send a note to axiom-developer@nongnu.org about it])
   esac
fi

must_set_AXIOM() {
   case "$SYSNAME" in
      freebsd)
         AC_MSG_NOTICE([Note that freebsd usually has noweb available])
         AC_MSG_NOTICE([echo If you wish to use the standard version you must type])
         AC_MSG_NOTICE([touch noweb])
         AC_MSG_NOTICE([If you wish to use a pre-installed GCL you must type])
         AC_MSG_NOTICE([make GCLVERSION=gcl-system])
         ;;
   esac
}

if test "x$AXIOM" = "x"; then
   must_set_AXIOM
elif test "`dirname $AXIOM`" != "`pwd`/mnt"; then
   must_set_AXIOM
else
   AC_MSG_NOTICE([configure complete.  Now type ])
   AC_MSG_NOTICE([                              ])
   AC_MSG_NOTICE([make])
fi
AXIOM=`pwd`/mnt/$SYSNAME
AC_SUBST(AXIOM)
AC_CONFIG_FILES(Makefile:Makefile.in:config/setup-dep.mk)

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
