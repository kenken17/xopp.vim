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
      \'True': 'False',
      \'False': 'True',
      \'TRUE': 'FALSE',
      \'FALSE': 'TRUE',
      \'read': 'write',
      \'write': 'read',
      \'Read': 'Write',
      \'Write': 'Read',
      \'get': 'post',
      \'post': 'get',
      \'Get': 'Post',
      \'Post': 'Get',
      \'GET': 'POST',
      \'POST': 'GET',
      \'yes': 'no',
      \'no': 'yes',
      \'Yes': 'No',
      \'No': 'Yes',
      \'YES': 'NO',
      \'NO': 'YES',
      \'left': 'right',
      \'right': 'left',
      \'Left': 'Right',
      \'Right': 'Left',
      \'LEFT': 'RIGHT',
      \'RIGHT': 'LEFT',
      \'top': 'bottom',
      \'bottom': 'top',
      \'Top': 'Bottom',
      \'Bottom': 'Top',
      \'TOP': 'BOTTOM',
      \'BOTTOM': 'TOP',
      \'height': 'width',
      \'width': 'height',
      \'Height': 'Width',
      \'Width': 'Height',
      \'HEIGHT': 'WIDTH',
      \'WIDTH': 'HEIGHT',
      \'margin': 'padding',
      \'padding': 'margin',
      \'Margin': 'Padding',
      \'Padding': 'Margin',
      \'MARGIN': 'PADDING',
      \'PADDING': 'MARGIN',
      \'let': 'const',
      \'const': 'let',
      \'Let': 'Const',
      \'Const': 'Let',
      \'LET': 'CONST',
      \'CONST': 'LET',
      \'after': 'before',
      \'before': 'after',
      \'After': 'Before',
      \'Before': 'After',
      \'AFTER': 'BEFORE',
      \'BEFORE': 'AFTER',
      \'=': '!',
      \'!': '=',
      \'>': '<',
      \'<': '>',
      \}

function s:Xopp()
  let s:wordUnderCursor = expand("<cword>") 

  if has_key(s:dict, s:wordUnderCursor)
    let s:itemToXopp = get(s:dict, s:wordUnderCursor, s:wordUnderCursor)

    execute "normal! ciw" . s:itemToXopp
  endif
endfunction

if !exists('g:xopp_map_keys')
  let g:xopp_map_keys = 1
endif

if g:xopp_map_keys
  nmap <unique> <Leader>x <Plug>Xopp
endif

noremap <unique> <script> <Plug>Xopp <SID>Xopp
noremap <silent> <SID>Xopp :call <SID>Xopp()<CR>

noremenu <script> Plugin.Xopp <SID>Xopp

if !exists(":Xopp")
  command -nargs=0 Xopp :call s:Xopp()
endif

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set ft=vim sw=2 sts=2 et:
