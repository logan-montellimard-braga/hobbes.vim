" Vim filetype plugin
" Language:         Hobbes
" Maintainer:       Logan Braga
" Last Change:      April 11, 2015

setlocal iskeyword+=_
setlocal commentstring=!!\ %s
setlocal nolisp
setlocal nosmartindent
setlocal autoindent

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

setlocal makeprg=hobbes\ compile\ %\ -o\ %:t:r.html
