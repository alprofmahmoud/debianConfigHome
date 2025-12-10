" ============================
" Debian-Specific Settings
" ============================

" Set shell to fish (if available on Debian)
if executable('fish')
    set shell=fish
else
    set shell=/bin/bash
endif

" NeoSolarized theme settings (from original Debian config)
if exists("&termguicolors") && exists("&winblend")
    let g:neosolarized_termtrans=1
    
    " Try to load NeoSolarized theme
    try
        runtime ./colors/NeoSolarized.vim
        colorscheme NeoSolarized
    catch
        " Fallback if NeoSolarized not found
    endtry
endif

" Debian-specific backup settings
set backupdir=~/.local/share/nvim/backup//
if !isdirectory(expand('~/.local/share/nvim/backup'))
    call mkdir(expand('~/.local/share/nvim/backup'), 'p')
endif

" Additional Debian performance optimizations
set ttyfast

" Debian-specific file watching
set updatetime=300
