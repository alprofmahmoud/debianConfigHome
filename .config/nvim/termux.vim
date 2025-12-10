" ============================
" Termux-Specific Settings
" ============================

" Clipboard integration with Termux
set clipboard^=unnamed,unnamedplus

" Auto-copy to Termux clipboard on yank
augroup TermuxClipboard
    autocmd!
    autocmd TextYankPost * call system('termux-clipboard-set', @")
augroup END

" Paste function from Termux clipboard
function! TermuxPaste(mode)
    let sysclip = system('termux-clipboard-get')
    if sysclip != @"
        let @" = sysclip
    endif
    return a:mode
endfunction

" Clipboard mappings for Termux
vnoremap <C-x> :!termux-clipboard-set<CR>
vnoremap <C-c> :!termux-clipboard-set<CR>
inoremap <C-v> <ESC>:read !termux-clipboard-get<CR>i
nnoremap <C-v> :read !termux-clipboard-get<CR>

" Paste mapping with function
nnoremap p :call TermuxPaste('p')<CR>
nnoremap P :call TermuxPaste('P')<CR>

" Termux storage permissions reminder
if !isdirectory(expand('~/storage'))
    echohl WarningMsg
    echo 'Termux: Run "termux-setup-storage" to access device storage'
    echohl None
endif

" Termux-specific backup directory
set backupdir=~/.local/share/nvim/backup-termux//
if !isdirectory(expand('~/.local/share/nvim/backup-termux'))
    call mkdir(expand('~/.local/share/nvim/backup-termux'), 'p')
endif

" Termux keyboard optimizations
" (Some terminals on Android have issues with certain key combinations)
set ttimeoutlen=50

" Termux file access warning
if !executable('termux-clipboard-set')
    echohl ErrorMsg
    echo 'Termux: termux-clipboard-set not found! Install: pkg install termux-api'
    echohl None
endif
