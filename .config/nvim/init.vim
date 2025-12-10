" ============================
" Neovim Main Configuration
" ============================
" This file only loads other configuration files
" All settings are organized in separate files

" Stop loading config if it's on tiny or small
if !1 | finish | endif

" ============================
" Load Plugins
" ============================
if filereadable(expand('~/.config/nvim/plugins.vim'))
    source ~/.config/nvim/plugins.vim
endif

" ============================
" Load Basic Settings
" ============================
if filereadable(expand('~/.config/nvim/settings.vim'))
    source ~/.config/nvim/settings.vim
endif

" ============================
" Load Key Mappings
" ============================
if filereadable(expand('~/.config/nvim/mappings.vim'))
    source ~/.config/nvim/mappings.vim
endif

" ============================
" Load Plugin Configurations
" ============================
" NERDTree
if filereadable(expand('~/.config/nvim/plugins-config/nerdtree.vim'))
    source ~/.config/nvim/plugins-config/nerdtree.vim
endif

" Airline
if filereadable(expand('~/.config/nvim/plugins-config/airline.vim'))
    source ~/.config/nvim/plugins-config/airline.vim
endif

" FZF
if filereadable(expand('~/.config/nvim/plugins-config/fzf.vim'))
    source ~/.config/nvim/plugins-config/fzf.vim
endif

" ALE
if filereadable(expand('~/.config/nvim/plugins-config/ale.vim'))
    source ~/.config/nvim/plugins-config/ale.vim
endif

" Syntastic
if filereadable(expand('~/.config/nvim/plugins-config/syntastic.vim'))
    source ~/.config/nvim/plugins-config/syntastic.vim
endif

" Markdown
if filereadable(expand('~/.config/nvim/plugins-config/markdown.vim'))
    source ~/.config/nvim/plugins-config/markdown.vim
endif

" Auto Save
if filereadable(expand('~/.config/nvim/plugins-config/autosave.vim'))
    source ~/.config/nvim/plugins-config/autosave.vim
endif

" ============================
" Environment Detection
" ============================

" Check for Termux (Android)
if has('android') || isdirectory('/data/data/com.termux')
    if filereadable(expand('~/.config/nvim/termux.vim'))
        source ~/.config/nvim/termux.vim
    endif
endif

" Check for Debian
if filereadable('/etc/debian_version')
    if filereadable(expand('~/.config/nvim/debian.vim'))
        source ~/.config/nvim/debian.vim
    endif
endif

" ============================
" Security
" ============================
" Allow local vimrc but with security
set exrc
set secure
