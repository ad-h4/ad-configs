" ============================================================================
" Plugins (Managed by VimPlug)
" ============================================================================

call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mattn/emmet-vim'
	Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'townk/vim-autoclose'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-surround'
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'leafgarland/typescript-vim'
	Plug 'ianks/vim-tsx'
	Plug 'vim-airline/vim-airline'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'vim-scripts/BufOnly.vim'
call plug#end()
" ============================================================================
" CoC Config
" ============================================================================

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" ============================================================================
" NERDTree Config
" ============================================================================

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd vimenter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeShowHidden = 1

" ============================================================================
" Airline Config
" ============================================================================

let g:airline_theme='cosme'

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Tabline config
let g:airline#extensions#tabline#enabled = 1

" ============================================================================
" Key Remapping & Generic Vim Config
" ============================================================================

" Theme
colo cosme

"Split Moving
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

" Key Rebinds & Buffer Config
nnoremap <space> :
nmap <F7> :NERDTreeToggle<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <F8> :Bclose!<CR>
nnoremap <F10> :Bclose<CR>
nnoremap <F11> :wBclose<CR>
:set hidden

"Cursor Config
:set guicursor=a:blinkon250

"Search Config
:set ignorecase
:set smartcase

"Indenting
:set shiftwidth=2
:set autoindent
:set smartindent
