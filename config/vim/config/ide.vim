" ACTUAL (OR LEGACY) CONFIG

" Automatically change the current directory
" See https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
" autocmd BufEnter * silent! lcd %:p:h
" *****************************************
" For Completion:
" Require nobackup and nowritebackup too
set updatetime=300        " Reduce delay to improve DX
set cmdheight=2           " Give more space for displaying messages.
set hidden                " Hide buffers instead of closing them
" *****************************************

" Rust
let g:rustfmt_autosave = 1

autocmd BufNewFile,BufRead *.rs set filetype=rust

let g:ale_linters = {
\  'rust': ['analyzer'],
\}

let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

" peitalin/vim-jsx-typescript
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" Typescriptreact as typescript type
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

" Make Vim as smart as VSCode
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-svg', 'coc-yaml', 'coc-emmet', 'coc-highlight', 'coc-stylelint', 'coc-spell-checker']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" NEW CONFIG
" See: https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim

" Highlighting for large files 
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Display tool-tip documentation and diagnostics on cursor hover
" nnoremap <silent> K :call CocAction('doHover')<CR>

" " Display on hover the diagnostic if it exists, otherwise the documentation
" function! ShowDocIfNoDiagnostic(timer_id)
"   if (coc#util#has_float() == 0)
"     silent call CocActionAsync('doHover')
"   endif
" endfunction

" function! s:show_hover_doc()
"   call timer_start(500, 'ShowDocIfNoDiagnostic')
" endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()

" Get COC diagnostic list
" nnoremap <silent> <leader>d :<C-u>CocList diagnostics<cr>