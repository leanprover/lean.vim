" Vim syntax file
" Language:		Lean
" Filename extensions:	*.lean
" Maintainer:           Gabriel Ebner

syn case match

" keywords

syn keyword leanKeyword import renaming hiding namespace local private protected section include omit section protected export open attribute
syn keyword leanKeyword lemma theorem def definition example axiom axioms constant constants universe universes inductive coinductive structure extends class instance noncomputable theory noncomputable mutual meta attribute parameter parameters variable variables reserve precedence postfix prefix notation infix infixl infixr begin by end set_option run_cmd
syn keyword leanKeyword forall fun Pi from have show assume suffices let if else then in with calc match do
syn keyword leanKeyword Sort Prop Type
syn keyword leanKeyword #eval #check #reduce #exit #print #help

" not present in pygments lexer
syn keyword leanKeyword prelude this suppose using fields at

syn match leanOp        ":"
syn match leanOp        "="

" constants
syn keyword leanConstant "#" "@" "->" "∼" "↔" "/" "==" ":=" "<->" "/\\" "\\/" "∧" "∨" ">>=" ">>"
syn keyword leanConstant ≠ < > ≤ ≥ ¬ <= >= ⁻¹ ⬝ ▸ + * - / λ
syn keyword leanConstant → ∃ ∀ Π ←

" delimiters

syn match       leanBraceErr   "}"
syn match       leanParenErr   ")"
syn match       leanBrackErr   "\]"

syn region      leanEncl            matchgroup=leanDelim start="(" end=")" contains=ALLBUT,leanParenErr keepend
syn region      leanBracketEncl     matchgroup=leanDelim start="\[" end="\]" contains=ALLBUT,leanBrackErr keepend
syn region      leanEncl            matchgroup=leanDelim start="{"  end="}" contains=ALLBUT,leanBraceErr keepend

" FIXME(gabriel): distinguish backquotes in notations from names
" syn region      leanNotation        start=+`+    end=+`+

syn keyword	leanTodo	containedin=leanComment TODO FIXME BUG FIX

syn region      leanComment	start=+/-+ end=+-/+ contains=leanTodo
syn match       leanComment     contains=leanTodo +--.*+

command -nargs=+ HiLink hi def link <args>

HiLink leanTodo               Todo

HiLink leanComment            Comment

HiLink leanKeyword            Keyword
HiLink leanConstant           Constant
HiLink leanDelim              Keyword  " Delimiter is bad
HiLink leanOp                 Keyword

HiLink leanNotation           String

HiLink leanBraceError         Error
HiLink leanParenError         Error
HiLink leanBracketError       Error

delcommand HiLink

let b:current_syntax = "lean"

" vim: ts=8 sw=8
