\documentclass{article}
\usepackage{../../../src/scripts/tex/axiom}
\begin{document}
\title{\$SPAD/lsp/ccl/src/axbase ccl-makeauto.lsp}
\author{Arthur Norman}
\maketitle
\begin{abstract}
\end{abstract}
\eject
\tableofcontents
\eject
<<*>>=

(load "try2.lsp")
;; This ought to be autoloaded, but cannot due to fasl bugs.  However
;; we need some of the defs to faslout some of the parsing stuff.
;; (load "cclinterp/parsing.lisp")

(in-package "BOOT")
(load_source_database "cclwhereis2.lsp")

;; New compiler
(faslout '|runtime|)
(load "compiler/lib/runtime.lsp")
(faslend)
(faslout '|lang|)
(load "compiler/lib/lang.lsp")
(faslend)
(faslout '|minimach|)
(load "compiler/lib/minimach.lsp")
(faslend)
(faslout '|axlit|)
(load "compiler/lib/axlit.lsp")
(faslend)
(faslout '|axextend|)
(load "compiler/lib/axextend.lsp")
(faslend)

;; Old compiler
(faslout 'OLDCOMP)
(load "cclinterp/nocompil.lisp")
(load "cclinterp/apply.clisp")
(load "cclinterp/c-doc.clisp")
(load "cclinterp/c-util.clisp")
(load "cclinterp/profile.clisp")
(load "cclinterp/category.clisp")
(load "cclinterp/compiler.clisp")
(load "cclinterp/define.clisp")
(load "cclinterp/functor.clisp")
(load "cclinterp/info.clisp")
(load "cclinterp/iterator.clisp")
(load "cclinterp/modemap.clisp")
(load "cclinterp/nruncomp.clisp")
(load "cclinterp/package.clisp")
(load "cclinterp/htcheck.clisp")
(load "cclinterp/xruncomp.clisp")
(faslend)

;; New Compiler Files
(faslout 'ax)
(load "cclinterp/ax.clisp")
(faslend)

;; Parser Files
(faslout 'METAPARSER)
(load "cclinterp/parsing.lisp")
(load "cclinterp/bootlex.lisp")
(load "cclinterp/def.lisp")
(load "cclinterp/fnewmeta.lisp")
(load "cclinterp/metalex.lisp")
(load "cclinterp/metameta.lisp")
(load "cclinterp/parse.clisp")
(load "cclinterp/postpar.clisp")
(load "cclinterp/postprop.lisp")
(load "cclinterp/preparse.lisp")
(faslend)

;; Browser Files
(faslout 'BROWSER)
(load "cclinterp/br-util.clisp")
(load "cclinterp/br-con.clisp")
(load "cclinterp/showimp.clisp")
(load "cclinterp/br-data.clisp")
(load "cclinterp/topics.clisp")
(load "cclinterp/br-op1.clisp")
(load "cclinterp/ht-root.clisp")
(load "cclinterp/br-op2.clisp")
(load "cclinterp/ht-util.clisp")
(load "cclinterp/br-prof.clisp")
(load "cclinterp/br-search.clisp")
(load "cclinterp/htsetvar.clisp")
(load "cclinterp/br-saturn.clisp")
;; Basic commands are now incorporated into the browser.
(load "cclinterp/bc-matrix.clisp")
(load "cclinterp/bc-misc.clisp")
(load "cclinterp/bc-solve.clisp")
(load "cclinterp/bc-util.clisp")
(faslend)

;; Translator files
(faslout 'TRANSLATOR)
(load "cclinterp/wi1.clisp")
(load "cclinterp/wi2.clisp")
(load "cclinterp/pspad1.clisp")
(load "cclinterp/pspad2.clisp")
(load "cclinterp/mark.clisp")
(load "cclinterp/nspadaux.lisp")
(faslend)

;; NAG browser files
(faslout 'nag-c02)
(load "cclinterp/nag-c02.clisp")
(faslend)
(faslout 'nag-c05)
(load "cclinterp/nag-c05.clisp")
(faslend)
(faslout 'nag-c06)
(load "cclinterp/nag-c06.clisp")
(faslend)
(faslout 'nag-d01)
(load "cclinterp/nag-d01.clisp")
(faslend)
(faslout 'nag-d02)
(load "cclinterp/nag-d02.clisp")
(faslend)
(faslout 'nag-d03)
(load "cclinterp/nag-d03.clisp")
(faslend)
(faslout 'nag-e01)
(load "cclinterp/nag-e01.clisp")
(faslend)
(faslout 'nag-e02)
(load "cclinterp/nag-e02.clisp")
(faslend)
(faslout 'nag-e04)
(load "cclinterp/nag-e04.clisp")
(faslend)
(faslout 'nag-f01)
(load "cclinterp/nag-f01.clisp")
(faslend)
(faslout 'nag-f02)
(load "cclinterp/nag-f02.clisp")
(faslend)
(faslout 'nag-f04)
(load "cclinterp/nag-f04.clisp")
(faslend)
(faslout 'nag-f07)
(load "cclinterp/nag-f07.clisp")
(faslend)
(faslout 'nag-s)
(load "cclinterp/nag-s.clisp")
(faslend)

;;ANNA
(faslout 'anna)
(load "cclinterp/anna.clisp")
(faslend)

(gc)
(save_source_database "cclwhereis3.lsp")

@
\eject
\begin{thebibliography}{99}
\bibitem{1} nothing
\end{thebibliography}
\end{document}
