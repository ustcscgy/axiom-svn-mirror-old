\documentclass{article}
\usepackage{../../../src/scripts/tex/axiom}
\begin{document}
\title{\$SPAD/lsp/ccl/src/caxbase axfns.h}
\author{Arthur Norman}
\maketitle
\begin{abstract}
\end{abstract}
\eject
\tableofcontents
\eject
<<*>>=

/* 
 * Talking to ccl 
 */

#ifdef __cplusplus 
extern "C" {
#endif

void  axfInitBuffer	(void);

void  axfAddChars	(int, const char *);

int   axfGetReturnCode	(void);
#ifdef __cplusplus 
}
#endif
@
\eject
\begin{thebibliography}{99}
\bibitem{1} nothing
\end{thebibliography}
\end{document}
