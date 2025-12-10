" ============================
" Markdown Configuration
" ============================

" ============================
" Instant Markdown Settings
" ============================
" Slow down refresh rate
let g:instant_markdown_slow = 1

" Auto-start preview when opening markdown files
let g:instant_markdown_autostart = 1

" Port for preview server (optional)
" let g:instant_markdown_port = 8090

" Allow external content (images, etc)
" let g:instant_markdown_allow_external_content = 1

" Don't auto-scroll
" let g:instant_markdown_autoscroll = 0

" ============================
" Vim Markdown Settings
" ============================
" Disable folding
" let g:vim_markdown_folding_disabled = 1

" Enable TOC window auto-fit
" let g:vim_markdown_toc_autofit = 1

" Highlight YAML front matter
" let g:vim_markdown_frontmatter = 1

" Enable LaTeX math
" let g:vim_markdown_math = 1

" Follow named anchors
" let g:vim_markdown_follow_anchor = 1

" ============================
" Key Mappings
" ============================
" Preview markdown file with glow (terminal markdown reader)
nnoremap <F9> :!glow %<CR>

" Alternative preview commands (uncomment to use):
" Open in browser with markdown-preview
" nnoremap <F9> :MarkdownPreview<CR>

" Stop preview
" nnoremap <F10> :MarkdownPreviewStop<CR>

" ============================
" Markdown File Settings
" ============================
augroup MarkdownSettings
    autocmd!
    " Set textwidth for markdown files
    autocmd FileType markdown setlocal textwidth=80
    
    " Enable spell check for markdown
    autocmd FileType markdown setlocal spell spelllang=en_us,ar
    
    " Wrap lines in markdown
    autocmd FileType markdown setlocal wrap
augroup END
