\documentclass{article}
\usepackage{../../../src/scripts/tex/axiom}
\begin{document}
\title{\$SPAD/lsp/ccl/src/boot boothdr.lisp}
\author{The Axiom Team}
\maketitle
\begin{abstract}
\end{abstract}
\eject
\tableofcontents
\eject
\section{License}
<<license>>=
; Copyright (c) 1991-2002, The Numerical ALgorithms Group Ltd.
; All rights reserved.
;
; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are
; met:
;
;     - Redistributions of source code must retain the above copyright
;       notice, this list of conditions and the following disclaimer.
;
;     - Redistributions in binary form must reproduce the above copyright
;       notice, this list of conditions and the following disclaimer in
;       the documentation and/or other materials provided with the
;       distribution.
;
;     - Neither the name of The Numerical ALgorithms Group Ltd. nor the
;       names of its contributors may be used to endorse or promote products
;       derived from this software without specific prior written permission.
;
; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
; IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
; TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
; PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
; OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
; EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
; PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
; PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
; LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

@
<<*>>=
<<license>>

(make-package 'BOOTTRAN)
(in-package 'BOOTTRAN :USE '(LISP USER SYSTEM))

;## need the conditional here so it appears in boottran
#+:ieee-floating-point (setq $ieee t)
#-:ieee-floating-point (setq $ieee nil)
@
\eject
\begin{thebibliography}{99}
\bibitem{1} nothing
\end{thebibliography}
\end{document}
