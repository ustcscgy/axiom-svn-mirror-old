\documentclass{article}
\usepackage{../../../src/scripts/tex/axiom}
\begin{document}
\title{\$SPAD/lsp/ccl/src/axbase ccl-makelibs-win32.lsp}
\author{Arthur Norman}
\maketitle
\begin{abstract}
\end{abstract}
\eject
\tableofcontents
\eject
<<*>>=

;;This script was created by makelib
(load "try2.lsp")
(in-package "BOOT")
(load_source_database "cclwhereis1.lsp")
(faslout '|ffrac|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/ffrac.lsp")
(faslend)
(faslout '|herm|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/herm.lsp")
(faslend)
(faslout '|invnode|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/invnode.lsp")
(faslend)
(faslout '|invport|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/invport.lsp")
(faslend)
(faslout '|invrender|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/invrender.lsp")
(faslend)
(faslout '|invtypes|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/invtypes.lsp")
(faslend)
(faslout '|invutils|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/invutils.lsp")
(faslend)
(faslout '|nagd|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nagd.lsp")
(faslend)
(faslout '|nags|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nags.lsp")
(faslend)
(faslout '|nasp1|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nasp1.lsp")
(faslend)
(faslout '|nasp35|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nasp35.lsp")
(faslend)
(faslout '|nasp4|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nasp4.lsp")
(faslend)
(faslout '|nasp6|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nasp6.lsp")
(faslend)
(faslout '|nqip|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nqip.lsp")
(faslend)
(faslout '|nrc|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nrc.lsp")
(faslend)
(faslout '|nsfip|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/nsfip.lsp")
(faslend)
(faslout '|twospace|)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/twospace.lsp")
(faslend)
(faslout 'DRAW)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/DRAW.NRLIB/code.lsp")
(faslend)
(faslout 'DRAWCFUN)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/DRAWCFUN.NRLIB/code.lsp")
(faslend)
(faslout 'DRAWCURV)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/DRAWCURV.NRLIB/code.lsp")
(faslend)
(faslout 'DRAWPT)
(load "/home/mcd/OpenAxiom/development/int/algebra/win32/DRAWPT.NRLIB/code.lsp")
(faslend)
;; PLEASE DON'T MESS WITH THIS GC CALL. YOU HAVE BEEN WARNED
;; TTT & PAB SUSPECT HASHTABLES ARE BROKEN
(gc)
(save_source_database "cclwhereis2.lsp")
(mapstore 0)  ;; see stats from build process 
(display-keywords)
@
\eject
\begin{thebibliography}{99}
\bibitem{1} nothing
\end{thebibliography}
\end{document}
