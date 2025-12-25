" ============================
" Vim-Plug Plugin Manager
" ============================
" Best, fastest, and newest compared to Vundle
" ============================

call plug#begin('~/.config/nvim/plugged')

" ============================
" Core Enhancements
" ============================
    " Smart default settings
    Plug 'tpope/vim-sensible'
    
    " Automatic closing of brackets and quotes
    Plug 'jiangmiao/auto-pairs'
    
    " Quick comments (gcc for line, gc for selection)
    Plug 'tpope/vim-commentary'
    
    " Easy line moving and swapping
    Plug 'matze/vim-move'

" ============================
" File Navigation & Management
" ============================
    " Tree file explorer
    Plug 'preservim/nerdtree'
    
    " File icons (requires Nerd Font)
    Plug 'ryanoasis/vim-devicons'
    
    " Fast fuzzy file finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    " Advanced project search
    Plug 'mileszs/ack.vim'

" ============================
" UI & Appearance
" ============================
    " Elegant status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Show indentation guides with lines
    Plug 'Yggdroot/indentLine'
    
    " Color Schemes
    Plug 'morhetz/gruvbox'                    " Warm and eye-comfortable
    Plug 'lifepillar/vim-solarized8'          " Classic
    Plug 'joshdick/onedark.vim'               " Modern
    Plug 'dracula/vim', { 'as': 'dracula' }   " Elegant dark
    Plug 'arcticicestudio/nord-vim'           " Cool and clean

" ============================
" Git Integration
" ============================
    " Git commands inside Vim
    Plug 'tpope/vim-fugitive'
    
    " Show Git changes in the margin
    Plug 'airblade/vim-gitgutter'

" ============================
" Code Quality & Linting
" ============================
    " Smart code checking engine (async)
    Plug 'dense-analysis/ale'
    
    " Smart auto-completion
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ============================
" Language Support
" ============================
    " Markdown
    Plug 'godlygeek/tabular'                  " Table alignment
    Plug 'preservim/vim-markdown'             " Markdown support
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
    
    " Python
    Plug 'vim-python/python-syntax'           " Enhanced Python syntax highlighting
    
    " JavaScript/TypeScript
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    
    " HTML/CSS
    Plug 'mattn/emmet-vim'                    " HTML/CSS shortcuts
    Plug 'ap/vim-css-color'                   " Color preview
    
    " JSON
    Plug 'elzr/vim-json'
    
    " YAML
    Plug 'stephpy/vim-yaml'
    
    " Bash/Shell
    Plug 'vim-scripts/bash-support.vim'

" ============================
" Productivity & Utilities
" ============================
    " Auto-save
    Plug '907th/vim-auto-save'
    
    " Smart surroundings (brackets, quotes)
    Plug 'tpope/vim-surround'
    
    " Smart command repetition
    Plug 'tpope/vim-repeat'
    
    " Enhanced quick-fix lists
    Plug 'romainl/vim-qf'
    
    " Session management
    Plug 'tpope/vim-obsession'
    
    " Shortcut helper
    Plug 'liuchengxu/vim-which-key'

" ============================
" Writing & Note-taking
" ============================
    " Writing mode (focus without distractions)
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'

call plug#end()

" ============================
" Enable file type detection
" ============================
filetype plugin indent on
syntax enable
