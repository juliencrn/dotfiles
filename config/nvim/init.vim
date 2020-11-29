"    _   ____________ _    ________  ___
"   / | / / ____/ __ \ |  / /  _/  |/  /
"  /  |/ / __/ / / / / | / // // /|_/ / 
" / /|  / /___/ /_/ /| |/ // // /  / /  
"/_/ |_/_____/\____/ |___/___/_/  /_/   
"

" Plugins
source ~/dotfiles/config/nvim/config/plugins.vim

" Enable filetype detection for plugins and indentation 
filetype plugin indent on
  
" Reload a file when it is changed from the outside
set autoread

" Write the file when we leave the buffer
set autowrite


" Disable swapfiles too
set noswapfile



" Show line number
set number

" *****************************************
" For Completion:
" *****************************************

" Reduce delay to improve DX
set updatetime=300

" Disable backups, we have source control for that
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Hide buffers instead of closing them and
" TextEdit might fail if hidden is not set.
set hidden

" *****************************************

" Enables syntax highlighting
syntax on

" Color the column after textwidth, usually the 80th
if version >= 703
  set colorcolumn=+1

endif

set shiftwidth=2

" Highlight current line
set cursorline

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
" TODO: Exclude .gitignored files like node_modules/*
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Make Vim as smart as VSCode
  " Language
  "Tools
  "\ 'coc-prettier', 
  "\ 'coc-eslint',
let g:coc_global_extensions = [
  \ 'coc-html', 
  \ 'coc-css', 
  \ 'coc-json', 
  \ 'coc-tsserver', " .jsconfig required for js project
  \ 'coc-svg',
  \ 'coc-yaml',
  \ 'coc-emmet',
  \ 'coc-highlight', " highlight hex, rgb
  \ 'coc-stylelint',
  \ 'coc-spell-checker'
  \]

" if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
"   let g:coc_global_extensions += ['coc-prettier']
" endif

" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"   let g:coc_global_extensions += ['coc-eslint']
" endif
