\documentclass{article}
\usepackage{../../../src/scripts/tex/axiom}
\begin{document}
\title{\$SPAD/lsp/ccl/src/axbase trap.lsp}
\author{Arthur Norman}
\maketitle
\begin{abstract}
\end{abstract}
\eject
\tableofcontents
\eject
<<*>>=

;; We only need this in ccl
;;

(defmacro |trappedSpadEval| (form) 
  `(let ((trapval (errorset ',form t lisp::*backtrace)))
      (if (consp trapval) (car trapval)
        '|restart|)))

(DEFUN |runspad| NIL  
  (PROG (|mode|) 
	(RETURN 
	 (SEQ 
	  (PROGN 
	   (SPADLET |mode| (QUOTE |restart|)) 
	   (DO 
	    NIL 
	    ((NULL (BOOT-EQUAL |mode| (QUOTE |restart|))) NIL) 
	    (SEQ 
	     (EXIT 
	      (PROGN 
	       (|resetStackLimits|) 
	       (CATCH |$quitTag|  
		      (CATCH  (QUOTE |coerceFailure|) 
			      (SPADLET |mode| 
				       (CATCH (QUOTE |top_level|) 
					      (|trappedSpadEval| (|ncTopLevel|))))))))))))))) 


@
\eject
\begin{thebibliography}{99}
\bibitem{1} nothing
\end{thebibliography}
\end{document}
