" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle安装的Plugins
Plugin 'yianwillis/vimcdoc'
Plugin 'korewayume/VimScript'
" Plugin 'flazz/vim-colorschemes'
Plugin 'dracula/vim'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 加载example vimrc
source $VIMRUNTIME/vimrc_example.vim


" korewayume

if has('gui_running')
    set guifont=UbuntuMono-Regular:h24
endif

map <C-n> :NERDTreeToggle<CR>       " NERDTree快捷键

set number                          " 显示行号
set expandtab                       " Use spaces instead of tabs.
set softtabstop =4                  " Tab key indents by 4 spaces.
set shiftwidth  =4                  " >> indents by 4 spaces.
set shiftround                      " >> indents to next multiple of 'shiftwidth'.
set backspace   =indent,eol,start   " Make backspace work as you would expect.
set incsearch                       " Highlight while searching with / or ?.
set hlsearch                        " Keep matches highlighted.
set cursorline                      " Find the current line quickly.
set undodir     =~/.vim/.udo        " undo目录
set backupext   =.bak               " backup文件的扩展名
set backupdir   =~/.vim/.bak        " backup文件的目录
set directory   =~/.vim/.swp        " swap文件的目录
set mouse       =a                  " 只在插入模式使用鼠标
" set nobackup
" set noswapfile

" Python
autocmd FileType python set foldmethod  =indent             " 依缩进折叠
autocmd FileType python set nofoldenable
autocmd FileType python set wrap
autocmd FileType python set linebreak
autocmd FileType python set breakindent
autocmd FileType python set showbreak=\ \ \ \ 

" colorscheme
" colorscheme herald
color dracula

" 自定义herald
" hi Pmenu                    ctermbg=0       ctermfg=white   " 自动补全菜单
hi Comment                  ctermfg=250                     " 注释配色
" hi Folded                   ctermbg=67      ctermfg=81

" Python高亮
" hi pythonComment            ctermfg=245
" hi pythonSelf               ctermfg=176
" hi pythonBuiltin            ctermfg=176                     " Python内置类型
" hi pythonAttribute          ctermfg=176
" hi pythonStatement          ctermfg=176
" hi pythonConditional        ctermfg=176
" hi pythonRepeat             ctermfg=176
" hi pythonOperator           ctermfg=176
" hi pythonInclude            ctermfg=176
" hi pythonAsync              ctermfg=176
" hi pythonSync               ctermfg=176
" hi pythonException          ctermfg=176
" hi pythonExceptions         ctermfg=180
" hi pythonDecorator          ctermfg=75
" hi pythonDecoratorName      ctermfg=75
" hi pythonTodo               ctermfg=75
" hi pythonFunction           ctermfg=9
" hi pythonString             ctermfg=215
" hi pythonRawString          ctermfg=173
" hi pythonEscape             ctermfg=131
" hi pythonNumber             ctermfg=84

