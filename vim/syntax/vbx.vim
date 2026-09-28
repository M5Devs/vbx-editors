" Vim syntax file
" Language: VBX (Visual Basic X)

if exists("b:current_syntax")
  finish
endif

" Case insensitive matching for keywords and builtins
syntax case ignore

" Keywords
syntax keyword vbxKeyword If Then Else ElseIf End For To Step Next While Wend Do Loop Select Case Exit Sub Function Return Dim Const

" Builtin functions
syntax keyword vbxBuiltin Print MsgBox InputBox Len Left Right Mid UCase LCase InStr Trim Replace Str Val Abs Sqr Rnd
syntax match vbxBuiltin "\bFile\.Write\b"
syntax match vbxBuiltin "\bFile\.Read\b"

" Comments
syntax match vbxComment "'.*$"

" Strings
syntax region vbxString start='"' end='"'

" Numbers
syntax match vbxNumber "\b\d\+\(\.\d\+\)\?\b"

" Operators
syntax match vbxOperator "[+\-*/%&=]"
syntax match vbxOperator "<>"
syntax match vbxOperator "<="
syntax match vbxOperator ">="
syntax match vbxOperator "<"
syntax match vbxOperator ">"

" Highlighting Links
highlight default link vbxKeyword Keyword
highlight default link vbxBuiltin Function
highlight default link vbxComment Comment
highlight default link vbxString String
highlight default link vbxNumber Number
highlight default link vbxOperator Operator

let b:current_syntax = "vbx"
