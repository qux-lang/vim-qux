" Vim syntax file
" Language:         Qux
" Maintainer:       Henry J. Wylde
" URL:              https://github.com/hjwylde/vim-qux/
" Latest Revision:  2017-09-22
" Filenames:        *.qux
" Version:          0.2.0.0

if exists("b:current_syntax")
    finish
endif

" Options

let foldmethod='indent'

" Errors

syn match errors '.'

hi def link errors error

" Comments

syn region commentBlock start='/\*' end='\*/' keepend contains=todos,@Spell
syn region commentLine  start='#' end='$' keepend contains=todos,@Spell

hi def link commentBlock    comment
hi def link commentLine     comment

" Constants

syn keyword bools false true

syn match nat '\d\+'
syn match nat '0o\o\+'
syn match nat '0x\x\+'

syn region str start='"' end='"' keepend contains=@Spell

hi def link bools   boolean
hi def link nat     number
hi def link str     string

" Modules

syn keyword processors import module

syn match module '\(module \)\@<=.*$'
syn match import '\(import \)\@<=.*$'

hi def link processors  preproc
hi def link module      normal
hi def link import      normal

" Identifiers

syn match functions '[a-z_][a-zA-Z0-9_']*'

hi def link functions function

" Statements

syn keyword keywords        external type
syn keyword conditionals    else if
syn keyword keywords        return
syn keyword repeats         while

syn match operators '[*/%+-]'
syn match operators '<\|<=\|>\|>='
syn match operators '==\|!='

hi def link conditionals    conditional
hi def link keywords        keyword
hi def link operators       operator
hi def link repeats         repeat

" Types

syn match types '[A-Z][a-zA-Z0-9_']*'

hi def link types type

" Specials

syn match delimiters '(\|)\|\[\|\]\|,\|:\|->'
syn match underscore '_'

hi def link delimiters delimiter
hi def link underscore delimiter

let b:current_syntax = 'qux'
