set encoding=UTF-8
set number
set list
set noswapfile
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
" set autoindent
" set cc=80
syntax on
set termguicolors
autocmd vimenter * ++nested colorscheme gruvbox
"autocmd vimenter * ++nested colorscheme dracula

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Syntax: html
Plug 'othree/html5.vim'
" Syntax: Javascript
Plug 'yuezk/vim-js'
" Syntax: scss
Plug 'cakebaker/scss-syntax.vim'
" Syntax: Vue
Plug 'posva/vim-vue'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
"Plug 'Mofiqul/dracula.nvim'

"Diffview
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'mattn/emmet-vim'

call plug#end()

nnoremap <C-n> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
let g:NERDTreeGitStatusGitBinPath = '/usr/bin/git' " default: git (auto find in path)
let g:NERDTreeGitStatusShowClean = 1 " default: 0

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

let g:airline_solarized_bg='dark'
let g:airline_section_y=''
let g:airline_section_z='%3p%% %3l/%L'

"Emmet remap
let g:user_emmet_leader_key=','
