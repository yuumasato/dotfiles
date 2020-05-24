source $VIMRUNTIME/defaults.vim

" Show line numbers
set nu 

" Enable loading of plugins and indent rules based on filetype
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Some useful abbreviations to common mistyped commands
cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq | cab Qa qa | cab Vs vs

set title 		"show file's title on terminal
set laststatus=2	"File's name on status bar
set showmatch		"Paren match hightlighting

"Tab navigation like browsers
nmap <C-h> ;tabprevious<CR>
nmap <C-l> ;tabnext<CR>
map <C-h> ;tabprevious<CR>
map <C-l> ;tabnext<CR>
imap <C-h> <Esc>;tabprevious<CR>a
imap <C-l> <Esc>;tabnext<CR>a

" Show column highlights:
highlight ColorColumn ctermbg=darkblue
call matchadd('ColorColumn', '\%101v', 100)

" set default side of splits, the default is confusing
set splitright
set splitbelow

" set invisible characters to show when set list is on
set listchars=eol:$,tab:<->,trail:~,extends:>,precedes:<,nbsp:^

" switch : and ;, I use : much more than ;
nnoremap ; :
nnoremap : ;
