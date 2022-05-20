colorscheme gruvbox

nnoremap <Leader>f <cmd>Telescope find_files<CR>
nnoremap <Leader>gc <cmd>Telescope git_commits<CR>
nnoremap <Leader>gb <cmd>Telescope git_branches<CR>
nnoremap <Leader>r <cmd>Telescope live_grep<CR>

nnoremap <Leader>gB <cmd>Git blame<CR>A

nnoremap <Leader>q <cmd>NERDTreeToggleVCS<CR>
nnoremap <Leader>w <cmd>TroubleToggle document_diagnostics<CR>

nnoremap <Leader>gt <cmd>ToggleTerm dir=git_dir direction=float<CR>
nnoremap <Leader>t <cmd>ToggleTerm direction=float<CR>
nnoremap <Leader>b <cmd>TermExec cmd="python3 %" direction=float<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

let g:airline_powerline_fonts = 1

set t_Co=256

" Avoid showing message extra message when using completion
set shortmess+=c

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
