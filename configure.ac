## %documentclass[12pt]{article}
## %usepackage{axiom}
## %usepackage[latin1]{inputenc}
## %usepackage[T1]{fontenc}
## %usepackage{fancyvrb}
## %usepackage{pslatex}
## %usepackage{url}

## %newcommand{%file}[1]{%textsf{#1}}
## %newcommand{%code}[1]{%texttt{#1}}
## %newcommand{%email}[1]{%url{#1}}
## %CustomVerbatimEnvironment{chunk}{Verbatim}{frame=none,fontsize=%small}

## %title{The Toplevel %file{configure.ac} File}
## %author{Gabriel Dos~Reis}
## 
## %begin{document}
## %maketitle
## 
## %begin{abstract}
##  ...
## %end{abstract}

## %section{Introduction}
## This is the top-level Autoconf file that sets up the minimum build
## environment for Axiom.  At the moment, the mainline version
## of Axiom is driven by %file{Makefile} pamphlet files.  This effort
## strives to move the build machinery to more abstract description
## and conventional ones.
## The task is compounded by the fact that the Axiom system is very 
## complex -- but much less complex, I suspect, than say GCC.  There does not
## seem to be good reasons why Axiom should build its own ghetto.
## 
## Autoconf supports two kinds of comments:
## %begin{enumerate}
## %item %code{dnl} style, and
## %item %code{%#} style.
## %end{enumerate}
## Comments introduced with %code{dnl} do not appear in the %file{configure}
## output file.  Comments starting with %code{%#} appear verbatim in the
## %file{configure} generated file.
## 
## I have been trying to write this Autoconf file so that it can
## eventually be processed by both Autoconf and noweb -- the currently en
## vogue literate programming tool used by Axiom.  To accommodate that
## requirement, I've strived for introducing noweb chunkname in
## %code{dnl}-style comments, whereas text intended to be part of the text
## processed by LaTeX is introduced by %verb!## !  This is so that the
## poor masochist who will be debugging the generated %file{configure} file
## (if he/she so elected) has a clue about where the macros are expanded
## from and what their purposes are.


## %section{Old Story}
## 
## The contents of top-level %file{configure} file from mainline is 
## reproduced below.  It will serve as the initial basis for the new,
## improved, build machinery.

## %begin{verbatim}
## # The sysname function uses uname -s to try to decode what kind of
## # system to build. Currently the return value of uname is mapped as
## #       Linux          --> linux
## #       MINGW32_NT-5.1 --> windows
## #       SunOS          --> Solaris9
## #       Fedora Core 3  --> fedora3
## #       freebsd        --> freebsd
## #
## # The solaris platform needs patch->gpatch, awk->gawk, tar->gtar
## 
## sysname () {
## if [ -f /etc/redhat-release ] ;
##  then 
##   SYSNAME=`cat /etc/redhat-release` 
##   if [ "$SYSNAME" = "Fedora Core release 3 (Heidelberg)" ] ; 
##    then SYSNAME=fedora3
##   fi
##   echo SYSNAME=$SYSNAME
## fi
## if [ ! "$SYSNAME" = "fedora3" ] ; 
##  then
##    SYSNAME=`uname -s`
##    echo $SYSNAME 
##    if [ "$SYSNAME" = "Linux" ] ; then SYSNAME=linux
##    elif  [ "$SYSNAME" = "MINGW32_NT-5.1" ] ; then SYSNAME=windows
##    elif  [ "$SYSNAME" = "SunOS" ] ; then SYSNAME=solaris9
##    elif  [ "$SYSNAME" = "freebsd" ] ; then SYSNAME=freebsd
##    else
##      echo Your system name is $SYSNAME
##      echo We do not know how to build for this kind of system
##      echo Send a note to axiom-developer@nongnu.org about it
##      echo
##      exit 0
##    fi
## fi
## 
## }
## 
## # This function checks for the gawk command. 
## # If it exists then AWKNAME is the complete pathname
## 
## checkgawk() {
## AWKNAME=`which gawk 2>>trace`
## if [ -n "$AWKNAME" ] ; then
##  if [ -x $AWKNAME ] ; then 
##   echo 
##  fi
## fi
## }
## 
## # This function checks for the nawk command. 
## # If it exists then AWKNAME is the complete pathname
## 
## checknawk() {
## AWKNAME=`which nawk 2>>trace`
## if [ -n "$AWKNAME" ] ; then
##  if [ -x $AWKNAME ] ; then 
##   echo 
##  fi
## fi
## }
## 
## # This function checks for the awk command. 
## # If it exists then AWKNAME is the complete pathname
## 
## checkawk() {
## AWKNAME=`which awk 2>>trace`
## if [ -n "$AWKNAME" ] ; then
##  if [ -x $AWKNAME ] ; then 
##   echo 
##  fi
## fi
## }
## 
## # This function uses the check*awk functions to decide 
## # whether the system can build noweb. If one of gawk, nawk or awk
## # are not found we fail.
## needAwk ()
## {
## checkgawk
## if [ -z "$AWKNAME" ] ; then
##   checknawk
##   if [ -z "$AWKNAME" ] ; then
##     checkawk
##     if [ -z "$AWKNAME" ] ; then
##       echo We need the commands gawk, nawk, or awk
##       exit 0
##     fi
##   fi
## fi
## }
## 
## # The mustSet function tells the user what needs to be typed on the 
## # command line. If any extra variables need to be set we add them here.
## # Currently the only thing we check if for the presence of gawk, which
## # is the default in the Makefile. If gawk does not exist we can use 
## # either nawk or awk but the user has to specify that on the command line.
## 
## # We check the system we are using with the uname command and try to
## # generate the appropriate value. We fail otherwise.
## 
## # We generate the appropriate command line that the user should use.
## 
## mustSet() {
## echo
## echo ===================================================
## echo You must set your AXIOM and PATH variables. Type:
## echo
## echo To build the rest of the system type:
## echo
## echo export AXIOM=`pwd`/mnt/$SYSNAME
## echo 'export PATH=$AXIOM/bin:$PATH'
## if [ "$SYSNAME" = "freebsd" ] ; then
##   echo Note that freebsd usually has noweb available
##   echo If you wish to use the standard version you must type
##   echo touch noweb 
##   echo If you wish to use a pre-installed GCL you must type
##   echo make GCLVERSION=gcl-system
## fi
## if [ "$SYSNAME" = "solaris9" ] ; 
##  then echo make AWK=gawk TAR=gtar PATCH=gpatch
## elif [ "`basename $AWKNAME`" = "gawk"  ] ; 
##  then echo make
##  else echo make AWK=$AWKNAME
## fi
## echo
## echo configure finished.
## }
## 
## #########################################################################
## # This is the main line of configure logic.
## # (1) We test to see if we understand this system name. So far
## #     the recognized strings from uname -s are translated as:
## #       Linux          --> linux
## #       MINGW32_NT-5.1 --> windows
## #       SunOS          --> Solaris9
## #       Fedora Core 3  --> fedora3
## #       freebsd        --> freebsd
## # (1) We test for the AWK variable. We need one of gawk, nawk, or awk
## #     in order to build the noweb software.
## # (2) Then we output the final message for the user.
## #
## # The solaris platform needs patch->gpatch, awk->gawk, tar->gtar
## #########################################################################
## 
## sysname
## needAwk
## 
## if [ "x$AXIOM" = "x" ] ;
##  then mustSet
##  else 
##   if [ ! "`dirname $AXIOM`" = "`pwd`/mnt" ]
##     then mustSet
##     else 
##      echo Configure complete. Now type
##      echo
##      echo make
##      echo
##   fi
## fi
## %end{verbatim}


## %section{Basic Setup}
## %subsection{Autoconf Initialization}
## 
## The Autoconf machinery needs to be initialized with several pieces of
## information:
## %begin{itemize}
## %item the %emph{name} of the system --- ``Axiom silver branch''
## %item its %emph{version}.  I choose to use the date of last checkin.
##   It should probably include the revision number so as to 
##   unambiguously identify which Axiom flavour du jour is being
##   built;
## %item and where to send feedback, %emph{e.g.} bug reports.  I have chosen
##   the %email{axiom-developer} list.  That could change in the future if
##   we reach a high volume traffic.  For the moment, we don't seem to
##   suffer from traffic...
## %end{itemize}
dnl %begin{chunk}
AC_INIT([Axiom silver branch], [2006-07-15], [axiom-developer@nongnu.org])
dnl %end{chunk}

## Autoconf needs some auxilary files that are present in the sub-directory
## %file{config}.  Autoconf needs to be told about that.
dnl %begin{chunk}
AC_CONFIG_AUX_DIR(config)
dnl %end{chunk}

## Notice that since we don't use Automake (yet), we don't initialize
## the Automake subsystem.  

## We require Autoconf 2.59 or higher from the developer part. Please,
## note that this is no requirement on the user build environment.  All,
## it means is that if someone makes changes to the current %file{configure.ac}
## file, that someone needs to have Autoconf 2.59 or higher to process this
## file in order to regenerate %file{configure}.
dnl %begin{chunk}
AC_PREREQ([2.59])
dnl %end{chunk}

## The Autoconf system implements a very basic, simple-minded, sanity check
## whereby it will refuse to run %file{configure} if the source tree does
## not contain a specified file, that serves a witness for a bona fide source
## tree.  Here, I have chosen %file{Makefile.pamphlet} from the %file{src}
## subdirectory.
dnl %begin{chunk}
AC_CONFIG_SRCDIR(src/Makefile.pamphlet)
dnl %end{chunk}


## %subsection{Build Environment}
## 
## Standard build environments consist of
## %begin{enumerate}
## %item the %emph{host} platform,
## %item the %emph{build} platform, and
## %item the %emph{target} platform.
## %end{enumerate}
## FIXME: Example on these notions.
## 
## Get the canonical names for the above three platforms.  After call to
## this macro, those values are available in the variables %code{host},
## %code{build}, and %code{target}, respectively.
dnl %begin{chunk}
AC_CANONICAL_SYSTEM
dnl %end{chunk}

## For the moment, we don't support cross-compiling, nor Canadian cross.
## Consequently, we must bail out if the build is not native.
dnl %begin{chunk}
if test $host != $build -o $host != $target; then
   AC_MSG_ERROR([Sorry, only native builds are currently supported])
fi
dnl %end{chunk}

## Check for a C compiler, %textsl{GCC/gcc} preferably.
dnl %begin{chunk}
AC_PROG_CC
dnl %end{chunk}

## Check for a usable 'install' program.
dnl %begin{chunk}
AC_PROG_INSTALL
dnl %end{chunk}


## The old build machinery needs 'awk'.  Currently, it checks for
## 'gawk', 'nawk', and 'awk'.  Autoconf has a predefined test for that
## task.  It checks for 'gawk', 'mawk', 'nawk', and 'awk' in that order.
## That should be OK and match Axiom's need.

## The old build system claims that on solaris9, gawk, gtar 
## and gpatch are required (with no much explanation of why).  Notice
## that these programs are needed only to build Axiom; so we do
## check based on the value of %code{build}.
dnl %begin{chunk}
case ${build} in
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
dnl %end{chunk}


## Once we have found those values, we must substitute them in the
## Makefiles.  For the moment, these actions are effectless as the
## current makefile are hand-written and Autoconf-unaware.
dnl %begin{chunk}
AC_SUBST(AWK)
AC_SUBST(TAR)
AC_SUBST(PATCH)
dnl %end{chunk}

## Obviously we need the 'make' program.  No build will proceed without
## it.
dnl %begin{chunk}
AC_CHECK_PROG([MAKE], [make],
              [make], [AC_MSG_ERROR([`make' program missing.])])

dnl %end{chunk}

## Here, we replicate the behaviour of the old configure, waiting for
## a better alternative, e.g. where it is not needed.  THIS WILL BE
## REMOVED IN THE NEAR FUTURE.

## First, the old machinery has a very coarse target name "discovery"
dnl %begin{chunk}
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
   AC_MSG_NOTICE([])
   AC_MSG_NOTICE([===================================================])
   AC_MSG_NOTICE([])
   AC_MSG_NOTICE([You must set your AXIOM and PATH variables. Type:])
   AC_MSG_NOTICE([])
   AC_MSG_NOTICE([export AXIOM=`pwd`/mnt/$SYSNAME])
   AC_MSG_NOTICE([export PATH=\$AXIOM/bin:\$PATH])
   case "$SYSNAME" in
      freebsd)
	 AC_MSG_NOTICE([Note that freebsd usually has noweb available])
	 AC_MSG_NOTICE([echo If you wish to use the standard version you must type])
	 AC_MSG_NOTICE([touch noweb])
	 AC_MSG_NOTICE([If you wish to use a pre-installed GCL you must type])
	 AC_MSG_NOTICE([make GCLVERSION=gcl-system])
         ;;
      solaris9)
         AC_MSG_NOTICE([make AWK=gawk TAR=gtar PATCH=gpatch])
         ;;
      *)
         AC_MSG_NOTICE([make AWK=$AWK])
   esac
}

if test "x$AXIOM" = "x"; then
   must_set_AXIOM
elif test "`dirname $AXIOM`" != "`pwd/mnt`"; then
   must_set_AXIOM
else
   AC_MSG_NOTICE([configure complete.  Now type ])
   AC_MSG_NOTICE([                              ])
   AC_MSG_NOTICE([make])
   AC_MSG_NOTICE([                              ])
   AC_MSG_NOTICE([export AXIOM=`pwd`/mnt/$SYSNAME])
   AC_MSG_NOTICE([export PATH=\$AXIOM/bin:\$PATH])
fi
dnl %end{chunk}

## %end{document}

