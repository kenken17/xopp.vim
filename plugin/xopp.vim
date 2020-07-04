" xopp.vim - Global plugin for swapping commonly use term
" Author:  ken <kenken17@gmail.com>
" Version: 1.0.0
" License: MIT

if exists("g:loaded_xopp")
  finish
endif
let g:loaded_xopp = 1

let s:save_cpo = &cpo
set cpo&vim

function s:Xopp(wordUnderCursor)
    if wordUnderCursor ==# "true"
        exe 'normal! ciwfalse'
    endif
    if wordUnderCursor ==# "false"
        exe 'normal! ciwtrue'
    endif

    if wordUnderCursor ==# "write"
        exe 'normal! ciwread'
    endif
    if wordUnderCursor ==# "read"
        exe 'normal! ciwwrite'
    endif

    if wordUnderCursor ==# "get"
        exe 'normal! ciwpost'
    endif
    if wordUnderCursor ==# "post"
        exe 'normal! ciwget'
    endif

    if wordUnderCursor ==# "yes"
        exe 'normal! ciwno'
    endif
    if wordUnderCursor ==# "no"
        exe 'normal! ciwyes'
    endif

    " For CSS (mainly)
    if wordUnderCursor ==# "left"
        exe 'normal! ciwright'
    endif
    if wordUnderCursor ==# "right"
        exe 'normal! ciwleft'
    endif

    if wordUnderCursor ==# "top"
        exe 'normal! ciwbottom'
    endif
    if wordUnderCursor ==# "bottom"
        exe 'normal! ciwtop'
    endif

    if wordUnderCursor ==# "height"
        exe 'normal! ciwwidth'
    endif
    if wordUnderCursor ==# "width"
        exe 'normal! ciwheight'
    endif

    if wordUnderCursor ==# "margin"
        exe 'normal! ciwpadding'
    endif
    if wordUnderCursor ==# "padding"
        exe 'normal! ciwmargin'
    endif

    " For JS
    if wordUnderCursor ==# "let"
        exe 'normal! ciwconst'
    endif
    if wordUnderCursor ==# "const"
        exe 'normal! ciwlet'
    endif
endfunction

if !hasmapto('<Plug>Xopp')
  map <unique> <Leader>x <Plug>Xopp
endif

noremap <unique> <script> <Plug>Xopp <SID>Xopp
noremap <SID>Xopp :call <SID>Xopp(expand("<cword>"))<CR>

noremenu <script> Plugin.Add\ Correction <SID>Xopp

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set ft=vim sw=2 sts=2 et:
