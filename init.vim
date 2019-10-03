""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  PlugList                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
call plug#begin('~/AppData/Local/nvim/plugged')

"美化
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
"theme color
Plug 'tomasr/molokai' | Plug 'altercation/solarized'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"JS的插件
"Plug 'isRuslan/vim-es6' | Plug 'mxw/vim-jsx'

"Syntastic
Plug 'scrooloose/syntastic'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"comments-auto
Plug 'scrooloose/nerdcommenter'

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
"Fuzzy file, buffer, mru, tag, etc finder.
Plug 'kien/ctrlp.vim'
"multiple selections
"Plug 'terryma/vim-multiple-cursors'
"Highlights trailing whitespace
Plug 'bronson/vim-trailing-whitespace'
"emmet quick-html
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
"Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'dkarter/bullets.vim', { 'for' :['markdown', 'vim-plug'] }

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              plugin settings                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set my leader
"let mapleader=";"
let mapleader=" "

set nocompatible
" Initialize plugin system
filetype plugin indent on

"加强版状态栏
" ===
" === Airline
" ===
"let g:airline_theme='dracula'
"let g:airline#extensions#coc#enabled = 0
"let g:airline#extensions#branch#enabled = 0
"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_mode_map = {
      "\ '__' : '-',
      "\ 'n'  : 'Nor',
      "\ 'i'  : 'Ins',
      "\ 'R'  : 'Rpl',
      "\ 'c'  : 'Cmd',
      "\ 'v'  : 'Vis',
      "\ 'V'  : 'Vli',
      "\ '' : 'Vbl',
      "\ 's'  : 'S',
      "\ 'S'  : 'S',
      "\ '' : 'S',
      "\ }

let g:airline_powerline_fonts = 0

" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = "N"
let NERDTreeMapUpdirKeepOpen = "n"
let NERDTreeMapOpenSplit = ""
let NERDTreeMapOpenVSplit = "I"
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapOpenInTabSilent = "O"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = ""
let NERDTreeMapChangeRoot = "l"
let NERDTreeMapMenu = ","
let NERDTreeMapToggleHidden = "zh"

"ctrlp ####
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'

" ===
" === Ultisnips
" ===
let g:tex_flavor = "latex"
imap <c-n> <nop>
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-n>"


"nerdcommenter ####
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1


"vim-easy-align ####
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"vim-jsx ####
let g:jsx_ext_required = 0

" ===
" === Markdown Settings
" ===
" Snippets
source "~/AppData/Local/nvim/snippits.vim"
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell

"syntastic


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               common setting                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_host_prog='D:/program Files/Miniconda3/python.exe'
let g:python3_host_prog='D:/program Files/Miniconda3/python.exe'

" ===
" === Dress up my vim
" ===
set termguicolors     " enable true colors support
let g:space_vim_transp_bg = 1
"set background=dark
colorscheme molokai
let ayucolor="mirage"
color ayu

nnoremap \d :call ChangeDress()<CR>
func! ChangeDress()
  if g:ayucolor == "mirage"
    let g:ayucolor = "light"
    color ayu
  else
    let g:ayucolor = "mirage"
    color ayu
  endif
endfunc

" ====================
" === Editor Setup ===
" ====================

" ===
" === System
" ===
"set clipboard=unnamed
let &t_ut=''
set autochdir

" ===
" === Editor behavior
" ===
set number
"Show related row numbers
set relativenumber
"set cursorline
set noexpandtab
set autoindent
set smartindent
set showmatch
set ignorecase
set cursorline
set incsearch
set display+=lastline
set guifont=Inconsolata:h15:cANSI
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" set clipboard+=unnamed
set clipboard=unnamed
set winaltkeys=no
set undofile " keep an undo file (undo changes after closing)
set ruler  " show the cursor position all the time
set showcmd " display incomplete commands
set cmdheight=1 " 1 screen lines to use for the command-line
set showfulltag " show tag with function protype.
set guioptions+=b " present the bottom scrollbar when the longest visible line exceed the window
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set tenc=utf-8

" Cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"



" ===
" === Terminal Behavior
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>

" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>, ; as :
let mapleader=" "
map ; :

" Disabling the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)  
map sw :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map ss :set splitbelow<CR>:split<CR>
map sa :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sr :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys  
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" Place the two screens up and down 
noremap sh <C-w>t<C-w>K
" Place the two screens side by side 
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K "将当前分屏设置为水平分割
noremap srv <C-w>b<C-w>H

" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
"map <LEADER>w <C-w>w
map <LEADER>w <C-w>k  "将光标移动到上边的窗口
map <LEADER>s <C-w>j  "将光标移动到下边的窗口
map <LEADER>a <C-w>h  "将光标移动到左边的窗口
map <LEADER>d <C-w>l  "将光标移动到右边的窗口

" Open the vimrc file anytime  ============
map <LEADER>rc :e ~/AppData/Local/nvim/init.vim<CR>

" Folding
map <silent> <LEADER>o za

" Indentation
nnoremap < <<
nnoremap > >>

" Search
map <LEADER><CR> :nohlsearch<CR>
"noremap = nzz
"noremap - Nzz

" Adjacent duplicate words   ============
map <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Open Startify ============<space>st
map <LEADER>st :Startify<CR>

" Undo operations
"noremap l u

syntax on

syntax enable
set autoread
set hlsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               keyboard-binding                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"默认文件夹
cd E:\11.Git

vmap <c-c> "+y
map <c-v> "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   others                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Put these in an autocmd group, so that we can delete them easily.

augroup vimrcEx
  autocmd!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell
  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
  " Disable wrap on some languages
  autocmd BufRead,BufNewFile *.slim setlocal textwidth=0
  autocmd BufRead,BufNewFile *.erb setlocal textwidth=0
  autocmd BufRead,BufNewFile *.html setlocal textwidth=0
  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell
  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-
  " Autocomplete ids and classes in CSS
  autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
  " Add the '-' as a keyword in erb files
  autocmd FileType eruby set iskeyword=@,48-57,_,192-255,$,-
  " Auto reload VIM when settings changed
  autocmd BufWritePost .vimrc so $MYVIMRC
  autocmd BufWritePost *.vim so $MYVIMRC
  autocmd BufWritePost vimrc.symlink so $MYVIMRC
  " Make those debugger statements painfully obvious
  au BufEnter *.rb syn match error contained "\<binding.pry\>"
  au BufEnter *.rb syn match error contained "\<debugger\>"
  au BufEnter *.js syn match error contained "\<debugger\>"
  au BufEnter *.coffee syn match error contained "\<debugger\>"
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   run                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"按F5编译运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    set splitbelow
    exec "!g++ -std=c++11 % -Wall -o %<"
    :sp
    :res -15
    :term ./%<
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    set splitbelow
    :sp
    :term python3 %
  elseif &filetype == 'html'
    silent! exec "!chromium % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
  elseif &filetype == 'go'
    set splitbelow
    :sp
    :term go run %
  endif
endfunc
