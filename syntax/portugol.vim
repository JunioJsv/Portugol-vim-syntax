" Vim syntax file
" Language:		Portugol
" Maintainer:		Jeovane Santos <JunioJsv@gmail.com>
" URL:			https://github.com/JunioJsv/portugol-vim-syntax
" Release Coordinator:	Daniel Teixeira <daniel.t.dt@gmail.com>
" ----------------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

syn match portugolCommentKey "^\s*\*\s*\zs@\w*\ze\s"
syn match portugolComment "//.*$"
syn region portugolComment start="\/\*" end="\*\/" contains=portugolCommentKey

syn keyword portugolKeyword programa funcao retorne inclua biblioteca const
syn keyword portugolKeyword se senao enquanto para
syn keyword portugolType inteiro real caracter cadeia logico vetor falso verdadeiro
syn keyword portugolOperator e ou nao
syn match portugolMathOperator "++\|--\|=\|==\|!=\|<=\|>=\|+=\|-=\|*=\|<\|>"
syn match portugolNumber "\<\-\?\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lLst]\=\>"
syn match portugolNumber "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match portugolNumber "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match portugolNumber "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"
syn region portugolString start='"' end='"'
syn keyword portugolEscrevaLeia escreva leia

hi def link portugolComment Comment
hi portugolKeyword guifg=LightGreen
hi def link portugolType Type
hi def link portugolOperator Special
hi portugolMathOperator guifg=Orange
hi def link portugolCommentKey Special
hi def link portugolNumber Constant
hi portugolString guifg=Yellow
hi portugolEscrevaLeia guifg=LightBlue

let b:current_syntax = "portugol"
