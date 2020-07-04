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

let s:dict = {
      \'true': 'false',
      \'false': 'true',
      \'read': 'write',
      \'write': 'read',
      \'get': 'post',
      \'post': 'get',
      \'yes': 'no',
      \'no': 'yes',
      \'left': 'right',
      \'right': 'left',
      \'top': 'bottom',
      \'bottom': 'top',
      \'height': 'width',
      \'width': 'height',
      \'margin': 'padding',
      \'padding': 'margin',
      \'let': 'const',
      \'const': 'let',
      \}

function s:Xopp()
  let s:wordUnderCursor = expand("<cword>") 

  if has_key(s:dict, s:wordUnderCursor)
    let s:itemToXopp = get(s:dict, s:wordUnderCursor, s:wordUnderCursor)

    execute "normal! ciw" . s:itemToXopp
  endif
endfunction

if !hasmapto('<Plug>Xopp')
  nmap <unique> <Leader>x <Plug>Xopp
endif

noremap <unique> <script> <Plug>Xopp <SID>Xopp
noremap <silent> <SID>Xopp :call <SID>Xopp()<CR>

noremenu <script> Plugin.Xopp\ Xopp <SID>Xopp

if !exists(":Xopp")
  command -nargs=0 Xopp :call s:Xopp()
endif

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set ft=vim sw=2 sts=2 et:
