" ============================
" Airline Configuration
" ============================

" ============================
" Basic Settings
" ============================
" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Enable tabline
let g:airline#extensions#tabline#enabled = 1

" Don't show buffers in tabline
let g:airline#extensions#tabline#show_buffers = 0

" Disable whitespace extension
let g:airline#extensions#whitespace#enabled = 0

" ============================
" Tabline Settings
" ============================
" Tabline separators
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ============================
" Extensions
" ============================
" Enable git hunks (requires vim-fugitive)
let g:airline#extensions#hunks#enabled = 1

" Enable git branch
let g:airline#extensions#branch#enabled = 1

" Enable NERDTree integration
let g:airline#extensions#nerdtree#enabled = 1

" ============================
" Airline Sections
" ============================
" Section C (left side) - filename with icon
let g:airline_section_c = '%t %{WebDevIconsGetFileTypeSymbol()}'

" Section X (right side) - filetype
let g:airline_section_x = '%{&filetype}'

" Section Y - buffer number
let g:airline_section_y = 'BN:%{bufnr("%")}'

" Section Z (far right) - line/column info
let g:airline_section_z = '%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%v%{g:airline_symbols.maxlinenr}%L%#__restore__#'

" ============================
" Airline Theme
" ============================
let g:airline_theme = 'base16_solarized'

" Alternative themes (uncomment to try):
" let g:airline_theme = 'gruvbox'
" let g:airline_theme = 'dark'
" let g:airline_theme = 'solarized'
" let g:airline_theme = 'molokai'
" let g:airline_theme = 'powerlineish'

" ============================
" Airline Symbols
" ============================
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' : '
let g:airline_symbols.maxlinenr = ' ☰ '
let g:airline_symbols.dirty = '⚡'

" Alternative symbols (if powerline fonts don't work):
" let g:airline_left_sep = '>'
" let g:airline_right_sep = '<'
" let g:airline_symbols.branch = 'BR'
" let g:airline_symbols.readonly = 'RO'
" let g:airline_symbols.linenr = 'LN'
