\documentclass{article}
\usepackage{../../../../../src/scripts/tex/axiom}
\begin{document}
\title{\$SPAD/lsp/ccl/src/axbase minimach.lsp}
\author{Arthur Norman}
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
 

;;;
;;; Lisp code generated by Aldor from file "minimach.as".
;;;

(in-package "FOAM-USER" :use '("FOAM" "LISP"))

(declare-prog (|C0-minimach-minimach|) ((|e1| |Env|)))

(declare-prog
  (|C1-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C2-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C3-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C4-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C5-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C6-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C7-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C8-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C9-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C10-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C11-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C12-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C13-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C14-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C15-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C16-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C17-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C18-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C19-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C20-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C21-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C22-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C23-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C24-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C25-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C26-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C27-minimach-addLevel0| |Clos|)
  ((|P0-domain| |Word|) (|e1| |Env|)))

(declare-prog
  (|C28-minimach-addLevel1| |Word|)
  ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))

(declare-prog
  (|C29-minimach-lang-init| |Word|)
  ((|P0-idx| |SInt|) (|e1| |Env|)))

(declare-type |G-minimach| |Clos|)

(declare-type |G-minimach_Machine_095542152| |Word|)

(defspecials |G-minimach_Machine_095542152|)

(|DDecl|
  |Struct-minimach-5|
  (|size-0| |SInt|)
  (|nsize-1| |SInt|)
  (|values-2| |Word|))

(|DDecl|
  |Struct-minimach-19|
  (|Word-0| |Word|)
  (|Ptr-1| |Word|)
  (|Rec-2| |Word|)
  (|Arr-3| |Word|)
  (|Nil-4| |Word|)
  (|DFlo-5| |Word|)
  (|SFlo-6| |Word|)
  (|Char-7| |Word|)
  (|BInt-8| |Word|)
  (|SInt-9| |Word|)
  (|HInt-10| |Word|)
  (|XByte-11| |Word|)
  (|Bool-12| |Word|))

(|DDecl| |Struct-minimach-20| (|Type-0| |Word|) (\-1 |Bool|))

(defprog
  ((|C0-minimach-minimach|) ((|e1| |Env|)))
  ((t0 |Clos|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (|l0| |Level|)
    (|e0| |Env|))
  (setq
    |l0|
    (|MakeLevel| |MAKE-Struct-minimach-20| |Struct-minimach-20|))
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall| |G-runtime|)
  (setq |G-minimach| |G-noOperation|)
  (setq t0 (|Clos| |e0| |C29-minimach-lang-init|))
  (setq
    |G-minimach_Machine_095542152|
    (|CCall| |G-domainMake| (|Clos| |e0| |C1-minimach-addLevel0|)))
  (|SetLex| |Struct-minimach-20--1| 1 |l0| (the |Bool| nil))
  (setq t1 (|ANew| |Word| (the |SInt| 13)))
  (setq t2 (|ANew| |Word| (the |SInt| 13)))
  (|SetAElt| t1 (the |SInt| 0) (the |SInt| 316428126))
  (|SetAElt| t2 (the |SInt| 0) (|MakeLit| "Nil"))
  (|SetAElt| t1 (the |SInt| 1) (the |SInt| 979554577))
  (|SetAElt| t2 (the |SInt| 1) (|MakeLit| "BInt"))
  (|SetAElt| t1 (the |SInt| 2) (the |SInt| 594651170))
  (|SetAElt| t2 (the |SInt| 2) (|MakeLit| "SInt"))
  (|SetAElt| t1 (the |SInt| 3) (the |SInt| 295223545))
  (|SetAElt| t2 (the |SInt| 3) (|MakeLit| "XByte"))
  (|SetAElt| t1 (the |SInt| 4) (the |SInt| 298204937))
  (|SetAElt| t2 (the |SInt| 4) (|MakeLit| "DFlo"))
  (|SetAElt| t1 (the |SInt| 5) (the |SInt| 321172770))
  (|SetAElt| t2 (the |SInt| 5) (|MakeLit| "Char"))
  (|SetAElt| t1 (the |SInt| 6) (the |SInt| 530526272))
  (|SetAElt| t2 (the |SInt| 6) (|MakeLit| "Word"))
  (|SetAElt| t1 (the |SInt| 7) (the |SInt| 316169045))
  (|SetAElt| t2 (the |SInt| 7) (|MakeLit| "Rec"))
  (|SetAElt| t1 (the |SInt| 8) (the |SInt| 312950368))
  (|SetAElt| t2 (the |SInt| 8) (|MakeLit| "Arr"))
  (|SetAElt| t1 (the |SInt| 9) (the |SInt| 208444183))
  (|SetAElt| t2 (the |SInt| 9) (|MakeLit| "HInt"))
  (|SetAElt| t1 (the |SInt| 10) (the |SInt| 592883736))
  (|SetAElt| t2 (the |SInt| 10) (|MakeLit| "SFlo"))
  (|SetAElt| t1 (the |SInt| 11) (the |SInt| 316039793))
  (|SetAElt| t2 (the |SInt| 11) (|MakeLit| "Ptr"))
  (|SetAElt| t1 (the |SInt| 12) (the |SInt| 988818480))
  (|SetAElt| t2 (the |SInt| 12) (|MakeLit| "Bool"))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t1)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t2)
  (|CCall| |G-rtAddStrings| t3 t4)
  (|SetLex|
    |Struct-minimach-20-Type-0|
    0
    |l0|
    (|CCall| |G-rtLazyDomFrInit| t0 (the |SInt| 0)))
  (block-return |C0-minimach-minimach| ()))

(defprog
  ((|C1-minimach-addLevel0| |Clos|) ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "Machine")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 73042068))
  (block-return
    |C1-minimach-addLevel0|
    (|Clos| |e0| |C2-minimach-addLevel1|)))

(defprog
  ((|C2-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (|l0| |Level|)
    (|e0| |Env|))
  (setq
    |l0|
    (|MakeLevel| |MAKE-Struct-minimach-19| |Struct-minimach-19|))
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (setq t0 (|ANew| |SInt| (the |SInt| 13)))
  (setq t1 (|ANew| |SInt| (the |SInt| 13)))
  (setq t2 (|ANew| |Word| (the |SInt| 13)))
  (|SetLex|
    |Struct-minimach-19-Bool-12|
    12
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C3-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-XByte-11|
    11
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C5-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-HInt-10|
    10
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C7-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-SInt-9|
    9
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C9-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-BInt-8|
    8
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C11-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-Char-7|
    7
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C13-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-SFlo-6|
    6
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C15-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-DFlo-5|
    5
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C17-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-Nil-4|
    4
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C19-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-Arr-3|
    3
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C21-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-Rec-2|
    2
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C23-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-Ptr-1|
    1
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C25-minimach-addLevel0|)))
  (|SetLex|
    |Struct-minimach-19-Word-0|
    0
    |l0|
    (|CCall| |G-domainMake| (|Clos| |e0| |C27-minimach-addLevel0|)))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 13))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|SetAElt| t0 (the |SInt| 0) (the |SInt| 988818480))
  (|SetAElt| t1 (the |SInt| 0) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 0)
    (|Lex| |Struct-minimach-19-Bool-12| 12 |l0|))
  (|SetAElt| t0 (the |SInt| 1) (the |SInt| 295223545))
  (|SetAElt| t1 (the |SInt| 1) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 1)
    (|Lex| |Struct-minimach-19-XByte-11| 11 |l0|))
  (|SetAElt| t0 (the |SInt| 2) (the |SInt| 208444183))
  (|SetAElt| t1 (the |SInt| 2) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 2)
    (|Lex| |Struct-minimach-19-HInt-10| 10 |l0|))
  (|SetAElt| t0 (the |SInt| 3) (the |SInt| 594651170))
  (|SetAElt| t1 (the |SInt| 3) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 3)
    (|Lex| |Struct-minimach-19-SInt-9| 9 |l0|))
  (|SetAElt| t0 (the |SInt| 4) (the |SInt| 979554577))
  (|SetAElt| t1 (the |SInt| 4) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 4)
    (|Lex| |Struct-minimach-19-BInt-8| 8 |l0|))
  (|SetAElt| t0 (the |SInt| 5) (the |SInt| 321172770))
  (|SetAElt| t1 (the |SInt| 5) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 5)
    (|Lex| |Struct-minimach-19-Char-7| 7 |l0|))
  (|SetAElt| t0 (the |SInt| 6) (the |SInt| 592883736))
  (|SetAElt| t1 (the |SInt| 6) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 6)
    (|Lex| |Struct-minimach-19-SFlo-6| 6 |l0|))
  (|SetAElt| t0 (the |SInt| 7) (the |SInt| 298204937))
  (|SetAElt| t1 (the |SInt| 7) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 7)
    (|Lex| |Struct-minimach-19-DFlo-5| 5 |l0|))
  (|SetAElt| t0 (the |SInt| 8) (the |SInt| 316428126))
  (|SetAElt| t1 (the |SInt| 8) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 8)
    (|Lex| |Struct-minimach-19-Nil-4| 4 |l0|))
  (|SetAElt| t0 (the |SInt| 9) (the |SInt| 312950368))
  (|SetAElt| t1 (the |SInt| 9) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 9)
    (|Lex| |Struct-minimach-19-Arr-3| 3 |l0|))
  (|SetAElt| t0 (the |SInt| 10) (the |SInt| 316169045))
  (|SetAElt| t1 (the |SInt| 10) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 10)
    (|Lex| |Struct-minimach-19-Rec-2| 2 |l0|))
  (|SetAElt| t0 (the |SInt| 11) (the |SInt| 316039793))
  (|SetAElt| t1 (the |SInt| 11) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 11)
    (|Lex| |Struct-minimach-19-Ptr-1| 1 |l0|))
  (|SetAElt| t0 (the |SInt| 12) (the |SInt| 530526272))
  (|SetAElt| t1 (the |SInt| 12) (the |SInt| 547382598))
  (|SetAElt|
    t2
    (the |SInt| 12)
    (|Lex| |Struct-minimach-19-Word-0| 0 |l0|))
  (block-return |C2-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C3-minimach-addLevel0| |Clos|) ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "Bool")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 988818480))
  (block-return
    |C3-minimach-addLevel0|
    (|Clos| |e0| |C4-minimach-addLevel1|)))

(defprog
  ((|C4-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C4-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C5-minimach-addLevel0| |Clos|) ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "XByte")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 295223545))
  (block-return
    |C5-minimach-addLevel0|
    (|Clos| |e0| |C6-minimach-addLevel1|)))

(defprog
  ((|C6-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C6-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C7-minimach-addLevel0| |Clos|) ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "HInt")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 208444183))
  (block-return
    |C7-minimach-addLevel0|
    (|Clos| |e0| |C8-minimach-addLevel1|)))

(defprog
  ((|C8-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C8-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C9-minimach-addLevel0| |Clos|) ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "SInt")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 594651170))
  (block-return
    |C9-minimach-addLevel0|
    (|Clos| |e0| |C10-minimach-addLevel1|)))

(defprog
  ((|C10-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C10-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C11-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "BInt")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 979554577))
  (block-return
    |C11-minimach-addLevel0|
    (|Clos| |e0| |C12-minimach-addLevel1|)))

(defprog
  ((|C12-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C12-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C13-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "Char")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 321172770))
  (block-return
    |C13-minimach-addLevel0|
    (|Clos| |e0| |C14-minimach-addLevel1|)))

(defprog
  ((|C14-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C14-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C15-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "SFlo")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 592883736))
  (block-return
    |C15-minimach-addLevel0|
    (|Clos| |e0| |C16-minimach-addLevel1|)))

(defprog
  ((|C16-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C16-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C17-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "DFlo")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 298204937))
  (block-return
    |C17-minimach-addLevel0|
    (|Clos| |e0| |C18-minimach-addLevel1|)))

(defprog
  ((|C18-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C18-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C19-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "Nil")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 316428126))
  (block-return
    |C19-minimach-addLevel0|
    (|Clos| |e0| |C20-minimach-addLevel1|)))

(defprog
  ((|C20-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C20-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C21-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "Arr")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 312950368))
  (block-return
    |C21-minimach-addLevel0|
    (|Clos| |e0| |C22-minimach-addLevel1|)))

(defprog
  ((|C22-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C22-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C23-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "Rec")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 316169045))
  (block-return
    |C23-minimach-addLevel0|
    (|Clos| |e0| |C24-minimach-addLevel1|)))

(defprog
  ((|C24-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C24-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C25-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "Ptr")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 316039793))
  (block-return
    |C25-minimach-addLevel0|
    (|Clos| |e0| |C26-minimach-addLevel1|)))

(defprog
  ((|C26-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C26-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C27-minimach-addLevel0| |Clos|)
    ((|P0-domain| |Word|) (|e1| |Env|)))
  ((|l0| |Level|) (|e0| |Env|))
  (setq |l0| nil)
  (setq |e0| (|MakeEnv| |e1| |l0|))
  (|CCall|
    |G-domainAddNameFn!|
    |P0-domain|
    (|CCall| |G-rtConstNameFn| (|MakeLit| "Word")))
  (|CCall| |G-domainAddHash!| |P0-domain| (the |SInt| 530526272))
  (block-return
    |C27-minimach-addLevel0|
    (|Clos| |e0| |C28-minimach-addLevel1|)))

(defprog
  ((|C28-minimach-addLevel1| |Word|)
    ((|P0-domain| |Word|) (|P1-hashcode| |Word|) (|e1| |Env|)))
  ((t0 |Arr|)
    (t1 |Arr|)
    (t2 |Arr|)
    (t3 |Record|)
    (t4 |Record|)
    (t5 |Record|)
    (t6 |Word|)
    (|e4| |Env|)
    (|l4| |Level|))
  (setq |e4| (|EnvNext| (|EnvNext| (|EnvNext| |e1|))))
  (setq |l4| (|EnvLevel| |e4|))
  (setq t0 (|ANew| |SInt| (the |SInt| 0)))
  (setq t1 (|ANew| |SInt| (the |SInt| 0)))
  (setq t2 (|ANew| |Word| (the |SInt| 0)))
  (setq t6 (|CCall| |G-domainMakeDispatch| |P0-domain|))
  (setq t3 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t3 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t3 t0)
  (setq t4 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t4 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t4 t1)
  (setq t5 (|RNew| |Struct-minimach-5|))
  (|SetRElt| |Struct-minimach-5| |size| 0 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |nsize| 1 t5 (the |SInt| 0))
  (|SetRElt| |Struct-minimach-5| |values| 2 t5 t2)
  (|CCall| |G-domainAddExports!| |P0-domain| t3 t4 t5)
  (|CCall|
    |G-domainAddDefaults!|
    |P0-domain|
    (|Lex| |Struct-minimach-20-Type-0| 0 |l4|)
    t6)
  (block-return |C28-minimach-addLevel1| |P0-domain|))

(defprog
  ((|C29-minimach-lang-init| |Word|) ((|P0-idx| |SInt|) (|e1| |Env|)))
  ((|l1| |Level|))
  (setq |l1| (|EnvLevel| |e1|))
  (tagbody
    (when (|Lex| |Struct-minimach-20--1| 1 |l1|) (go |Lab0|))
    (|SetLex| |Struct-minimach-20--1| 1 |l1| (the |Bool| t))
    (|CCall| |G-lang|)
    |Lab0|
    (block-return |C29-minimach-lang-init| |G-lang_Type_394624008|)))

(setq |G-minimach| (|Clos| nil |C0-minimach-minimach|))

(setq |G-minimach_Machine_095542152| nil)

(file-imports
  '((|G-lang| "lang" |initializer| "")
      (|G-rtAddStrings| "rtAddStrings" 0 "")
      (|G-domainMake| "domainMake" 0 "")
      (|G-domainAddDefaults!| "domainAddDefaults!" 0 "")
      (|G-rtLazyDomFrInit| "rtLazyDomFrInit" 0 "")
      (|G-lang_Type_394624008| "Type" 394624008 "lang")
      (|G-domainMakeDispatch| "domainMakeDispatch" 0 "")
      (|G-domainAddExports!| "domainAddExports!" 0 "")
      (|G-domainAddHash!| "domainAddHash!" 0 "")
      (|G-domainAddNameFn!| "domainAddNameFn!" 0 "")
      (|G-rtConstNameFn| "rtConstNameFn" 0 "")
      (|G-runtime| "runtime" |initializer| "")
      (|G-noOperation| "noOperation" 0 "")))

(file-exports
  '((|G-minimach_Machine_095542152| "Machine" 95542152 "minimach")
      (|G-minimach| "minimach" |initializer| "")))
@
\eject
\begin{thebibliography}{99}
\bibitem{1} nothing
\end{thebibliography}
\end{document}
