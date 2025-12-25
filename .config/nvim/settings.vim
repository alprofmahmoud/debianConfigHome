" ============================
" Basic Settings
" ============================

" Init autocmd
autocmd!

" Script encoding
scriptencoding utf-8

" ============================
" File Encoding
" ============================
set encoding=utf-8
set fileencodings=utf-8,sjis,euc-jp,latin

" ============================
" Basic Options
" ============================
set nocompatible
set number
set relativenumber
set title
set autoindent
set autoread
set backup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set backupskip=/tmp/*,/private/tmp/*
set mouse=a
set termbidi
set arabicshape
set updatetime=500
set clipboard=unnamedplus

" Save files with sudo privileges
command! W execute 'silent! write !sudo tee % >/dev/null' | edit!
" ============================
" Neovim Specific
" ============================
if has('nvim')
    set inccommand=split
endif

" ============================
" Undo Settings
" ============================
set undodir=~/.local/share/nvim/undo//
set undofile

" Create undo directory if it doesn't exist
if !isdirectory(expand('~/.local/share/nvim/undo'))
    call mkdir(expand('~/.local/share/nvim/undo'), 'p')
endif

" ============================
" Paste Settings
" ============================
" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" ============================
" Performance Settings
" ============================
set nosc noru nosm
set lazyredraw

" ============================
" Search Settings
" ============================
set ignorecase
set smarttab

" ============================
" Indentation Settings
" ============================
set shiftwidth=2
set tabstop=2
set softtabstop=4
set ai
set si
set nowrap
set backspace=start,eol,indent

" ============================
" File Finding
" ============================
" Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" ============================
" Comments
" ============================
" Add asterisks in block comments
set formatoptions+=r

" ============================
" Auto Reload
" ============================
" Auto reload when file changes externally
augroup AutoReload
    autocmd!
    autocmd CursorHold,CursorHoldI * checktime
    autocmd FocusGained,BufEnter * checktime
augroup END

" ============================
" Visual Settings
" ============================
syntax enable
set background=dark
set cursorline
set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

" Highlight current window
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

" ============================
" Screen Title
" ============================
" Update screen title in terminal multiplexers
if &term =~ "screen"
    autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
    autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

" ============================
" Theme Configuration
" ============================
set completeopt-=preview

" True color support
if exists("&termguicolors") && exists("&winblend")
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
endif

" Try to load theme with fallback
try
    colorscheme solarized8_high
catch /^Vim\%((\a\+)\)\=:E185/
    try
        colorscheme gruvbox
    catch /^Vim\%((\a\+)\)\=:E185/
        try
            colorscheme NeoSolarized
        catch /^Vim\%((\a\+)\)\=:E185/
            colorscheme default
            echo 'Using default colorscheme'
        endtry
    endtry
endtry

" ============================
" File Types
" ============================

" JavaScript
au BufNewFile,BufRead *.es6 setf javascript

" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact

" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown

" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

" Fish
au BufNewFile,BufRead *.fish set filetype=fish

" File extensions for quick editing
set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

" ============================
" File Type Specific Settings
" ============================
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" ============================
" Python Settings
" ============================
" Add shebang automatically for new Python files
augroup PythonSetup
    autocmd!
    autocmd BufNewFile *.py call setline(1, '#!/usr/bin/env python3') | startinsert!
augroup END
" ============================
" Fix sudoedit temporary files
" ============================
" This part solves color issues with sudoedit
" Add it anywhere in the settings.vim file

" Add regex engine setting for performance
set re=0

" Detect filetype from original filename (not temp name)
augroup SudoeditFiletype
    autocmd!
    autocmd BufRead /var/tmp/*,/tmp/* call DetectSudoeditFiletype()
augroup END

function! DetectSudoeditFiletype()
    let temp_name = expand('%:t')
    let full_path = expand('%:p')
    
    " Common system files patterns - FIX: sourceslist not sourcelist
    if temp_name =~? 'source' && temp_name =~? '\.list$'
        " Set both filetype AND syntax explicitly
        set filetype=sourceslist
        set syntax=sourceslist
    elseif temp_name =~? '\.conf$'
        set filetype=conf | set syntax=conf
    elseif temp_name =~? 'nginx'
        set filetype=nginx | set syntax=nginx
    elseif temp_name =~? 'apache'
        set filetype=apache | set syntax=apache
    elseif temp_name =~? 'fstab'
        set filetype=fstab | set syntax=fstab
    elseif temp_name =~? '^host' && temp_name !~? '\.'
        set filetype=conf | set syntax=conf
    elseif temp_name =~? '\.sh$'
        set filetype=sh | set syntax=sh
    elseif temp_name =~? 'bash\|profile'
        set filetype=sh | set syntax=sh
    elseif temp_name =~? '\.py$'
        set filetype=python | set syntax=python
    elseif temp_name =~? '\.js$'
        set filetype=javascript | set syntax=javascript
    elseif temp_name =~? '\.json$'
        set filetype=json | set syntax=json
    elseif temp_name =~? '\.ya?ml$'
        set filetype=yaml | set syntax=yaml
    elseif temp_name =~? '\.xml$'
        set filetype=xml | set syntax=xml
    elseif temp_name =~? '\.html?$'
        set filetype=html | set syntax=html
    elseif temp_name =~? '\.css$'
        set filetype=css | set syntax=css
    elseif temp_name =~? '\.service$\|\.timer$'
        set filetype=systemd | set syntax=systemd
    elseif temp_name =~? '\.php$'
        set filetype=php | set syntax=php
    else
        set filetype=conf | set syntax=conf
    endif
    
    " Force reload syntax
    syntax enable
    syntax on
    
    " Debug message
    echom "Detected filetype: " . &filetype . " | syntax: " . &syntax
endfunction

" ============================
" Improve colors in Terminal
" ============================
" This part improves color display
set t_Co=256
