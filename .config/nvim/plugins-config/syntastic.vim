" ============================
" Syntastic Configuration
" ============================

" ============================
" Key Mappings
" ============================
" Run syntax check manually
nmap <F8> :SyntasticCheck<CR>

" Clear syntax check results
nmap <F7> :SyntasticReset<CR>

" ============================
" Status Line Integration
" ============================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" ============================
" Syntastic Behavior
" ============================
" Always populate location list with errors
let g:syntastic_always_populate_loc_list = 1

" Automatically open/close error window
let g:syntastic_auto_loc_list = 1

" Don't check on file open
let g:syntastic_check_on_open = 0

" Don't check on :wq
let g:syntastic_check_on_wq = 0

" Passive mode (only check when manually triggered)
let g:syntastic_mode_map = {'mode': 'passive'}

" ============================
" Display Settings
" ============================
" Error symbols
" let g:syntastic_error_symbol = '✘'
" let g:syntastic_warning_symbol = '⚠'

" Alternative symbols:
" let g:syntastic_error_symbol = 'E'
" let g:syntastic_warning_symbol = 'W'

" ============================
" Language Specific Checkers
" ============================
" Python checkers
" let g:syntastic_python_checkers = ['flake8', 'pylint']

" JavaScript checkers
" let g:syntastic_javascript_checkers = ['eslint']

" Note: Syntastic is older than ALE
" Consider using ALE instead for async checking
