" ============================
" Plugin Managers and Plugins
" ============================

" ============================
" Vundle Setup
" ============================
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()
    " Vundle manages itself
    Plugin 'VundleVim/Vundle.vim'
    
    " Auto close brackets
    Plugin 'townk/vim-autoclose'
    
    " File explorer
    Plugin 'scrooloose/nerdtree'
    
    " File icons
    Plugin 'ryanoasis/vim-devicons'
    
    " Status line
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    
    " Color schemes
    Plugin 'danilo-augusto/vim-afterglow'
    Plugin 'altercation/vim-colors-solarized'
    
    " Fuzzy finder
    Plugin 'junegunn/fzf'
    
    " Git integration
    Plugin 'tpope/vim-fugitive'
    
    " Syntax checker
    Plugin 'scrooloose/syntastic'
    
    " Markdown support
    Plugin 'godlygeek/tabular'
    Plugin 'preservim/vim-markdown'
    
    " Auto save
    Plugin '907th/vim-auto-save'
call vundle#end()

" ============================
" Vim-Plug Setup
" ============================
call plug#begin('~/.config/nvim/plugged')
    " Sensible defaults
    Plug 'tpope/vim-sensible'
    
    " File icons (duplicate - will use Vundle version)
    Plug 'ryanoasis/vim-devicons'
    
    " Color schemes
    Plug 'morhetz/gruvbox'
    Plug 'lifepillar/vim-solarized8'
    
    " Markdown preview
    Plug 'iamcco/markdown-preview.vim'
    Plug 'instant-markdown/vim-instant-markdown'
    
    " Async Lint Engine
    Plug 'dense-analysis/ale'
call plug#end()

" ============================
" Enable filetype detection
" ============================
filetype plugin indent on
