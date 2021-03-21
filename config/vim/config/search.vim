" Fuzzy finder using FZF
" Ctrl-P: Search files using fdfind (fd)
nnoremap <C-p> :FZF<CR>

" Ctrl-F: Search in files using RipGrep (rg)
nnoremap <C-F> :Rg<CR>

" Ctrl-f: Search in current file
nnoremap <C-f> /

" TODO: I'm not sure for the following line
" See: https://dev.to/iggredible/how-to-search-faster-in-vim-with-fzf-vim-36ko#finding-in-files
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Layout position centered
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" FZF Options and preview using batcat (bat)
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:40%' --layout reverse --preview 'bat --color=always --style=grid --line-range :300 {}'"
