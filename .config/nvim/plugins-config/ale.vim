" ============================
" ALE (Async Lint Engine) Configuration
" ============================

" ============================
" Linters Setup
" ============================
" Define which linters to use for each language
let g:ale_linters = {
    \ 'python': ['flake8'],
    \ 'vim': ['vint'],
    \ 'javascript': ['eslint'],
    \ 'sh': ['shellcheck'],
    \ }

" Add more linters as needed:
" \ 'ruby': ['rubocop'],
" \ 'go': ['golint'],
" \ 'rust': ['cargo'],

" ============================
" Checking Settings
" ============================
" When to run linting
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 0

" ============================
" Error List Settings
" ============================
" Automatically display error list
let g:ale_open_list = 0

" Error list window size
let g:ale_list_window_size = 5

" ============================
" Error Message Formatting
" ============================
" How error messages are displayed
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Example output: [flake8] line too long [warning]

" ============================
" Visual Indicators
" ============================
" Display errors in sidebar with signs
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

" Alternative signs (if symbols don't work):
" let g:ale_sign_error = 'E'
" let g:ale_sign_warning = 'W'

" ============================
" Vint Settings (for Vim files)
" ============================
" Ignore some vint style warnings
let g:ale_vim_vint_show_style_issues = 0

" ============================
" Navigation Shortcuts
" ============================
" Jump to next error
nmap <silent> <leader>aj :ALENext<CR>

" Jump to previous error
nmap <silent> <leader>ak :ALEPrevious<CR>

" Show error details
nmap <silent> <leader>ad :ALEDetail<CR>

" ============================
" File Type Specific Shortcuts
" ============================
augroup ALEShortcuts
    autocmd!
    " Press F4 to manually run linting in Python files
    autocmd FileType python nnoremap <buffer> <F4> :ALELint<CR>
    
    " Press F4 to manually run linting in Vim files
    autocmd FileType vim nnoremap <buffer> <F4> :ALELint<CR>
    
    " Press q to close quickfix window
    autocmd FileType qf nnoremap <buffer> q :q<CR>
augroup END

" ============================
" Manual Vint Checker Command
" ============================
" Alternative manual checker if ALE doesn't work
command! VintCheck cexpr system('vint --no-color ' . shellescape(expand('%')) . ' 2>/dev/null') | copen
nnoremap <F5> :VintCheck<CR>

" ============================
" Additional Settings (Optional)
" ============================
" Fix files automatically on save
" let g:ale_fix_on_save = 1

" Define fixers
" let g:ale_fixers = {
"     \ 'python': ['black', 'isort'],
"     \ 'javascript': ['prettier', 'eslint'],
"     \ }

" Show errors in virtual text (nvim 0.3.2+)
" let g:ale_virtualtext_cursor = 1

" Customize sign column colors
" highlight ALEErrorSign ctermfg=red
" highlight ALEWarningSign ctermfg=yellow
