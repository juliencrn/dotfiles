"    _   ____________ _    ________  ___
"   / | / / ____/ __ \ |  / /  _/  |/  /
"  /  |/ / __/ / / / / | / // // /|_/ / 
" / /|  / /___/ /_/ /| |/ // // /  / /  
"/_/ |_/_____/\____/ |___/___/_/  /_/   
"

" Plugins
source ~/dotfiles/nvim/config/plugins.vim

" APPEARANCE
if (has("termguicolors"))
    set termguicolors
endif
syntax enable
colorscheme dracula


" NERD TREE
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" TERMINAL INTEGRATED
" TODO: I can't close the Term
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" SEARCH FILE
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'vsplit',
  \ 'ctrl-v': 'split'
  \}

" Exclude from search .gitignored files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" INTELLISENCE
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']