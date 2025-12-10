" ============================
" NERDTree Configuration
" ============================

" ============================
" Key Mappings
" ============================
" Open NERDTree
nnoremap <C-n> :NERDTree<CR>

" Toggle NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" ============================
" NERDTree Settings
" ============================
" Custom arrow symbols
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

" Show hidden files
" let g:NERDTreeShowHidden = 1

" Ignore certain files
" let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git$']

" NERDTree window size
" let g:NERDTreeWinSize = 30

" ============================
" Auto Commands
" ============================
" Auto-close NERDTree if it's the only window left
augroup NERDTreeAutoClose
    autocmd!
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
augroup END

" Close NERDTree after opening a file
" autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Auto-open NERDTree when vim starts (optional - disabled by default)
" autocmd VimEnter * NERDTree | wincmd p

" Refresh NERDTree when entering a buffer
" autocmd BufEnter NERD_tree_* | execute 'normal R'
