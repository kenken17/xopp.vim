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
    if a:wordUnderCursor ==# "true"
        exe 'normal! ciwfalse'
    endif
    if a:wordUnderCursor ==# "false"
        exe 'normal! ciwtrue'
    endif

    if a:wordUnderCursor ==# "write"
        exe 'normal! ciwread'
    endif
    if a:wordUnderCursor ==# "read"
        exe 'normal! ciwwrite'
    endif

    if a:wordUnderCursor ==# "get"
        exe 'normal! ciwpost'
    endif
    if a:wordUnderCursor ==# "post"
        exe 'normal! ciwget'
    endif

    if a:wordUnderCursor ==# "yes"
        exe 'normal! ciwno'
    endif
    if a:wordUnderCursor ==# "no"
        exe 'normal! ciwyes'
    endif

    " For CSS (mainly)
    if a:wordUnderCursor ==# "left"
        exe 'normal! ciwright'
    endif
    if a:wordUnderCursor ==# "right"
        exe 'normal! ciwleft'
    endif

    if a:wordUnderCursor ==# "top"
        exe 'normal! ciwbottom'
    endif
    if a:wordUnderCursor ==# "bottom"
        exe 'normal! ciwtop'
    endif

    if a:wordUnderCursor ==# "height"
        exe 'normal! ciwwidth'
    endif
    if a:wordUnderCursor ==# "width"
        exe 'normal! ciwheight'
    endif

    if a:wordUnderCursor ==# "margin"
        exe 'normal! ciwpadding'
    endif
    if a:wordUnderCursor ==# "padding"
        exe 'normal! ciwmargin'
    endif

    " For JS
    if a:wordUnderCursor ==# "let"
        exe 'normal! ciwconst'
    endif
    if a:wordUnderCursor ==# "const"
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
