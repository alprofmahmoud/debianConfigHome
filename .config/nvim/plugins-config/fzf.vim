" ============================
" FZF Configuration
" ============================

" ============================
" Key Mappings
" ============================
" Open FZF file finder
nnoremap <C-f> :FZF<CR>

" ============================
" FZF Action Function
" ============================
" Function to build quickfix list from selected files
function! s:build_quickfix_list(lines)
    call setqflist(map(copy(a:lines), '{ "filename": v:val, "lnum": 1 }'))
    copen
    cc
endfunction

" ============================
" FZF Actions
" ============================
" Define what happens when you press certain keys in FZF
let g:fzf_action = {
    \ 'ctrl-q': function('s:build_quickfix_list'),
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

" Action key explanations:
" ctrl-q : Add selected files to quickfix list
" ctrl-t : Open in new tab
" ctrl-x : Open in horizontal split
" ctrl-v : Open in vertical split

" ============================
" FZF Layout
" ============================
" Floating window layout (requires nvim 0.4+ or vim 8.2+)
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.5 } }

" Alternative layouts (uncomment to use):
" Bottom panel
" let g:fzf_layout = { 'down': '40%' }

" Right panel
" let g:fzf_layout = { 'right': '50%' }

" Top panel
" let g:fzf_layout = { 'up': '40%' }

" ============================
" FZF Colors
" ============================
" Match vim color scheme
let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

" ============================
" FZF History
" ============================
" Enable history for FZF commands
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Create history directory if it doesn't exist
if !isdirectory(expand('~/.local/share/fzf-history'))
    call mkdir(expand('~/.local/share/fzf-history'), 'p')
endif

" ============================
" Additional FZF Commands (Optional)
" ============================
" Uncomment to enable additional commands:

" Search in files (requires ripgrep or ag)
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)

" Search in git files only
" nnoremap <leader>gf :GFiles<CR>

" Search in buffers
" nnoremap <leader>b :Buffers<CR>

" Search in command history
" nnoremap <leader>h :History:<CR>

" Search in search history  
" nnoremap <leader>/ :History/<CR>
