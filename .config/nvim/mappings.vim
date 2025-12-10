" ============================
" Key Mappings
" ============================

" ============================
" Leader Key
" ============================
let mapleader = ','

" ============================
" Normal Mode Mappings
" ============================

" Save file
nmap <C-s> :w<CR>

" Reload config
nmap <C-d> :source $HOME/.config/nvim/init.vim<CR>

" Quit
nmap <C-q> :q<CR>

" Open file explorer
nmap <C-o> :e .<CR>

" Edit config file
nnoremap <leader>ev :edit ~/.config/nvim/init.vim<CR>

" ============================
" Tab Navigation
" ============================
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

" ============================
" Folding
" ============================
" Toggle fold
nnoremap <space> za

" Create fold from current position to end of block
nnoremap <leader>zz zf}

" ============================
" Select All and Copy
" ============================
" Select all
nnoremap <leader>a ggVG

" Copy all to system clipboard
nnoremap <leader>y gg"*yG``

" Copy all (yanking to default register)
nnoremap <leader>ya ggVG

" ============================
" Search
" ============================
" Clear search highlight
nnoremap <silent> <Space> :nohlsearch<CR>

" ============================
" Insert Mode Mappings
" ============================

" Save file from insert mode
imap <C-s> <ESC>:w<CR>

" Open file explorer from insert mode
imap <C-o> :e .<CR>

" ============================
" Visual Mode Mappings
" ============================

" Indent right and stay in visual mode
vnoremap <Tab> >gv

" Indent left and stay in visual mode
vnoremap <S-Tab> <gv

" ============================
" Python Execution
" ============================
augroup PythonExecution
    autocmd!
    " Execute Python file with F9 in normal mode
    autocmd FileType python noremap <buffer> <F9> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
    
    " Execute Python file with F9 in insert mode
    autocmd FileType python inoremap <buffer> <F9> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
augroup END
