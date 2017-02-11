" Init {{{1
if exists('g:loaded_vim_relative_number') || &cp
  finish
endif
let g:loaded_vim_relative_number = 1

if v:version < 703 || (v:version == 703 && !has('patch1115'))
  echoerr "Relative number settings requires Vim 7.3+"
  finish
endif

" Default configuration {{{1
set number
set relativenumber
if !exists('g:relative_number_map') | let g:relative_number_map = '<Leader>n' | endif

" Commands & Mappings {{{1
command! RelativeNumberToggle call relative_number#Toggle()
command! NumberRelativeToggle call relative_number#Toggle()

if !hasmapto('<Plug>relative_number')
    try
        exe "nmap <unique> " . g:relative_number_map . " <Plug>RelativeNumberToggle"
        exe "xmap <unique> " . g:relative_number_map . " <Plug>RelativeNumberToggle"
    catch /^Vim(.*):E227:/
        if(&verbose != 0)
            echohl WarningMsg|echomsg 'Error: relative_number default mapping: ' . g:relative_number_map
            \ . 'is already taken, refusing to overwrite it. See :h relative_numberConfig-map' |echohl None
        endif
    endtry
endif

nnoremap <unique> <script> <Plug>RelativeNumberToggle :RelativeNumberToggle<CR>
xnoremap <unique> <script> <Plug>RelativeNumberToggle :RelativeNumberToggle<CR>
