" Vim syntax file
" Language:         Hobbes
" Maintainer:       Logan Braga
" Last Change:      April 03, 2015

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax case ignore


" Matching
syn match hobTitle   /^\s*_s\{0,5}t\(i\(t\(r\(e\)\=\)\=\)\=\)\=[1-6]\=\s\+/
syn match hobQuote   /^\s*_c\(i\(t\(a\(t\(i\(o\(n\)\=\)\=\)\=\)\=\)\=\)\=\)\=\s\+/
syn match hobDef     /^\s*_d\(e\(f\(i\(n\(i\(t\(i\(o\(n\)\=\)\=\)\=\)\=\)\=\)\=\)\=\)\=\)\=\s\+/
syn match hobCode    /^\s*_c\(o\(d\(e\)\=\)\=\)\=\s\+$/
syn match hobExample /^\s*_e\(x\(e\(m\(p\(l\(e\)\=\)\=\)\=\)\=\)\=\)\=\s\+/
syn match hobImg     /^\s*_img\s\+/
syn match hobImg     /^\s*_i\(m\(a\(g\(e\)\=\)\=\)\=\)\=\s\+/
syn match hobVid     /^\s*_v\(i\(d\(e\(o\)\=\)\=\)\=\)\=\s\+/

syn match hobRule     /^\s*\\\@<!\(+\|\*\|\-\|:\|%\|\$\|&\|\~\|#\|'\)\{3,}\s*$/
syn match hobImg      /\s\S*\.\(png\|jpeg\|gif\|bmp\)\s/
syn match hobVid      /\s\S*\.\(mp4\|avi\|wmv\|webm\|mov\|3gp\|ogg\|ogv\)\s/
syn match hobMissing  /\\\@<!#??\+/
syn match hobLink     /\\\@<!\->\S\+/
syn match hobLink     /https\=:\/\/\S\+/
syn match hobAbbrev   /\\\@<!\~\S\+/
syn match hobVariable /\\\@<!=\S\+/
syn match hobUList    /^\s*\\\@<!\(+\|\*\|\-\|:\|%\|\$\|&\|\~\|#\|'\)\s/
syn match hobOList    /^\s*\\\@<!\d\+\.\s/

syn region hobComment   start="\\\@<!\!\*"                end="\*\!"
syn region hobComment   start="\\\@<!\!\!.\+"             end="$"
syn region hobCode      start="\\\@<!`\(\S\{2,}\)\@="     end="\S\@<=\\\@<!`"    contains=ALL
syn region hobEm        start="\\\@<!\/\(\S\{2,}\)\@="    end="\S\@<=\\\@<!\/"   contains=ALL
syn region hobStrong    start="\\\@<!\*\(\S\{2,}\)\@="    end="\S\@<=\\\@<!\*"   contains=ALL
syn region hobMark      start="\\\@<!%\(\S\{2,}\)\@="     end="\S\@<=\\\@<!%"    contains=ALL
syn region hobSup       start="\\\@<!\^\(\S\{2,}\)\@="    end="\S\@<=\\\@<!\^"   contains=ALL
syn region hobSub       start="\\\@<!<\(\S\{2,}\)\@="     end="\S\@<=\\\@<!>"    contains=ALL
syn region hobUnderline start="\\\@<!_\(\S\{2,}\)\@="     end="\S\@<=\\\@<!_"    contains=ALL keepend oneline
syn region hobDelete    start="\\\@<!\-\-\(\S\{2,}\)\@="  end="\S\@<=\\\@<!\-\-" contains=ALL
syn region hobExample   start="(exe\=m\=p\=l\=e\=\s*:\s*" end="\s*)"             contains=ALL


" Highlighting
hi def link hobTitle     Title
hi def link hobQuote     String
hi def link hobDef       Define
hi def link hobLink      Special
hi def link hobComment   Comment
hi def link hobAbbrev    SpecialChar
hi def link hobVariable  Keyword
hi def link hobStrong    Label
hi def link hobDelete    Exception
hi def link hobUnderline Underlined
hi def link hobEm        String
hi def link hobCode      Function
hi def link hobMark      Constant
hi def link hobSup       SpecialChar
hi def link hobSub       SpecialChar
hi def link hobExample   String
hi def link hobRule      Delimiter
hi def link hobMissing   Exception
hi def link hobImg       Include
hi def link hobVid       Include
hi def link hobUList     Number
hi def link hobOList     Float


let b:current_syntax = "hobbes"
