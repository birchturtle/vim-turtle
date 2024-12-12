" NETRW SETTINGS
let g:netrw_preview = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 30

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.5

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 0

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" VIM-AIRLINE SETTINGS
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'tinted-theming/tinted-vim'
Plug 'fenetikm/falcon'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
" Plug 'vim-scripts/taglist.vim'
" Plug 'majutsushi/tagbar'

call plug#end()

set scrolloff=4

nnoremap <Space> <Nop>
let mapleader=" "

nmap <Leader>s :split 
nmap <Leader><C-s> :vsplit 

nmap <Leader>f :Lexplore<Enter>
nmap <Leader><S-f> :Hexplore<Enter>
nmap <Leader><C-S-f> :Explore!<Enter>

" nmap <Leader>s :TagbarToggle<CR>

nmap <Leader><S-n> :tabnew<Enter>:Ntree C:\Users\jakob.nielsen\Dropbox\MD<Enter>

nmap <Leader>b :buffers<Enter>
nmap <Leader>p :bprev<Enter>
nmap <Leader>n :bn<Enter>
nmap <Leader><C-b> :bdel<Enter>
nmap <Leader><C-o> :only<Enter>

nmap <Leader>t :tabnew<Enter>
nmap <Leader><S-t> :tabnew 

nmap <Leader><S-g> :term <Enter> git status <Enter>
nmap <Leader><C-S-g> :term <Enter> gitui <Enter>

nmap <Leader>l :lop<Enter>
nmap <Leader><C-l> yiw:lvimgrep/<C-R>"/g <C-R>%

nmap <C-M-t> :term<Enter>

set gfn=Consolas:h12:W350:cANSI:qDRAFT
set noswapfile
set nu
set shell=pwsh.exe
set tabstop=4
set shiftwidth=4
set autoindent
set nowrap
set background=dark
color janah
