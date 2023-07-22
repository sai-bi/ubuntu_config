set nocompatible             
filetype off                  
set expandtab
set clipboard+=unnamedplus
set nobackup
set ignorecase


" set term=xterm-256color
" set t_Co=256
" set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors


" set t_8f=^[[38;2;%lu;%lu;%lum
"set t_8b=^[[48;2;%lu;%lu;%lum

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'The-NERD-tree'
Plugin 'taglist.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'powerline/powerline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tikhomirov/vim-glsl'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Chiel92/vim-autoformat'
Plugin 'airblade/vim-gitgutter'
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jcf/vim-latex'
Plugin 'jceb/vim-orgmode'
Plugin 'hdima/python-syntax'
Plugin 'tbastos/vim-lua'
" Plugin 'vim-scripts/CSApprox'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nightsense/office'
Plugin 'google/vim-colorscheme-primary'
Plugin 'vim-scripts/guicolorscheme.vim'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'djoshea/vim-autoread'


" Plugin 'luochen1990/rainbow'

Plugin 'ryanoasis/vim-devicons'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'vim-scripts/AutoComplPop'
"
"
" Plugin 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
" Plugin 'zxqfl/tabnine-vim'
Plugin 'rhysd/vim-grammarous'

" Plugin 'lifepillar/vim-mucomplete'
Plugin 'davidhalter/jedi-vim'
" Plugin 'lervag/vimtex'

Plugin 'ervandew/supertab'

Plugin 'tmhedberg/SimpylFold'
" Plugin 'python-mode/python-mode'
" Plugin 'Valloric/YouCompleteMe'

" Plugin 'Shougo/deoplete.nvim'
" Plugin 'roxma/nvim-yarp'
" Plugin 'roxma/vim-hug-neovim-rpc'
" Plugin 'zchee/deoplete-jedi'
"


" Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }

if has('nvim')
    Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
else
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'roxma/nvim-yarp'
    Plugin 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup=1

" if has('nvim')
  " Plugin 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" else
  " Plugin 'Shougo/defx.nvim'
  " Plugin 'roxma/nvim-yarp'
  " Plugin 'roxma/vim-hug-neovim-rpc'
" endif



" Plugin 'mkitt/tabline.vim'
Plugin 'webdevel/tabulous'
Plugin 'tpope/vim-fugitive'
Plugin 'nightsense/vimspectr'


Plugin 'Yggdroot/LeaderF', { 'do': '.\install.bat' }

call vundle#end()           

filetype plugin indent on    

syntax on
set number 
set autoindent
" set guifont=Consolas:h16
" set gfn=Monaco\ 18
set gfn=DejaVu\ Sans\ Mono\ 14
inoremap jk <esc>
set guioptions-=m
set guioptions-=T "remove toolbar
" set backspace=indent,eol,start
set backspace=2
set shiftwidth=4
set tabstop=4
set expandtab
set tw=80

set hlsearch " highlight search results 
set encoding=UTF-8
set fileencoding=utf-8

" tag list
map <S-t>  :TlistToggle<CR>

" The nerd tree plugin: use Shift + l to toggle
map <S-m>  :NERDTreeToggle<CR>
let g:NERDTreeMapOpenInTabSilent = '<2-LeftMouse>'
let NERDTreeMapOpenInTab='<ENTER>'

" ctags
nmap    <silent>    <F6>     <Esc>:!ctags  *<CR>
imap    <silent>    <F6>     <Esc>:w<CR>:!ctags  *<CR>
set autochdir


" " " neocomplete
" let g:neocomplete#enable_auto_select=1
" let g:acp_enableAtStartup = 1
" " " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><Space> pumvisible() ? "\<C-n>" : "\<Space>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" nerdcommenter
let mapleader="h"
let NERDSpaceDelims=1


" copy

inoremap { {<CR>}<Esc>O<TAB>

" status line
set laststatus=2
set statusline=
set statusline+=%1*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2

set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\ "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \ %{strftime('[%H:%M]')} "Modified? Readonly? Top/bot.

let timer = timer_start(4000, 'UpdateStatusBar',{'repeat':-1})
function! UpdateStatusBar(timer)
  execute 'let &ro = &ro'
endfunction

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

" ruler at 80
set colorcolumn=80

" enhanced highlight for cpp
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" set tab display
set guitablabel=\[%N\]\ %t\ %M 



" default start up directory


set virtualedit=onemore

" formatter
let g:formatdef_my_custom_cpp = '"astyle --mode=c --style=google"'
let g:formatters_cpp = ['my_custom_cpp']

" tab navigation
nnoremap F gT
nnoremap H gt

" go to end of file
nnoremap ge G

" ctrlp
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'

" set tw=79
set wrap linebreak nolist

" vim tex
let g:tex_flavor='latex'

" fold
" nnoremap df zE
" nnoremap fd zM
set nofoldenable 
" set foldmethod=indent " fold based on indent                          

if exists('+autochdir')
    set autochdir
else
    autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

set linespace=6

let g:Tex_DefaultTargetFormat='pdf'


" python highlight
let python_highlight_all = 1
let python_highlight_space_errors = 0

" syn keyword pythonThis cls self

" syn match pythonChain '\v(^|\W)(cls|self)\zs(\s*\.\s*\h\w*)+' contains=pythonMember
" syn match pythonMember '\h\w*' contained

hi link pythonThis Comment
hi link pythonMember Function

" set spell
set mouse=a


" hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
" syn keyword pythonStatement     self
" hi TabLine ctermfg=Blue ctermbg=249
" hi TabLineSel ctermfg=Red ctermbg=Yellow


set guitablabel=%t


set t_ut=
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40

nnoremap <leader>sv :source $MYVIMRC<CR>     

let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
" au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

" set t_Co=256
" set background=light
" colorscheme PaperColor
" colorscheme dracula
" colorscheme fruit
" " colorscheme chela_light
" colorscheme dracula
" set background=light
" colorscheme vimspectr300-light
set background=dark
" colorscheme deus
" set background=light
" colorscheme molokai
colorscheme PaperColor
" set background=dark
" colorscheme dracula

" colorscheme neodark
" set background=light
" colorscheme summerfruit
" let g:neodark#background = '#202020'
" colorscheme PaperColor
" set t_Co=256

" colorscheme summerfruit

" rainbow_parentheses
let g:rbpt_colorpairs = [
                        \ ['brown',       'RoyalBlue3'],
                        \ ['Darkblue',    'SeaGreen3'],
                        \ ['darkgray',    'DarkOrchid3'],
                        \ ['darkgreen',   'firebrick3'],
                        \ ['darkcyan',    'RoyalBlue3'],
                        \ ['darkred',     'SeaGreen3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['brown',       'firebrick3'],
                        \ ['gray',        'RoyalBlue3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['Darkblue',    'firebrick3'],
                        \ ['darkgreen',   'RoyalBlue3'],
                        \ ['darkcyan',    'SeaGreen3'],
                        \ ['darkred',     'DarkOrchid3'],
                        \ ['red',         'firebrick3'],
                        \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let ftToIgnore = ['nerdtree']
au Syntax * if index(ftToIgnore, &ft) < 0 | RainbowParenthesesLoadSquare

" au Syntax nerdtree RainbowParenthesesToggle

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

function StatusBar ()
    hi User1 guifg=#ffdad8  guibg=#880c0e
    hi User2 guifg=#000000  guibg=#F4905C
    hi User3 guifg=#292b00  guibg=#f4f597
    hi User4 guifg=#112605  guibg=#aefe7B
    hi User5 guifg=#051d00  guibg=#7dcc7d
    hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
    hi User8 guifg=#ffffff  guibg=#5b7fbb
    hi User9 guifg=#ffffff  guibg=#810085
    hi User0 guifg=#ffffff  guibg=#094afe

    
    hi User1 ctermfg=224 ctermbg=88 gui=bold
    hi User2 ctermfg=16 ctermbg=209
    hi User3 ctermfg=16 ctermbg=228
    hi User4 ctermfg=16 ctermbg=156
    hi User5 ctermfg=16 ctermbg=114
    hi User7 ctermfg=16 ctermbg=88 gui=bold
    hi User8 ctermfg=16 ctermbg=67
    hi User9 ctermfg=16 ctermbg=90
    hi User0 ctermfg=16 ctermbg=27
endfunction

nnoremap <leader>sb :call StatusBar()<CR>     
hi User1 ctermfg=224 ctermbg=88 gui=bold
hi User2 ctermfg=16 ctermbg=209
hi User3 ctermfg=16 ctermbg=228
hi User4 ctermfg=16 ctermbg=156
hi User5 ctermfg=16 ctermbg=114
hi User7 ctermfg=16 ctermbg=88 gui=bold
hi User8 ctermfg=16 ctermbg=67
hi User9 ctermfg=16 ctermbg=90
hi User0 ctermfg=16 ctermbg=27

set expandtab
set autoindent
set smartindent


" session
let g:session_autosave='yes'


" autocmd FileType tex setlocal spell  
" hi Normal cterbg=None 

let g:session_autoload='no'

" avoid 0 1 during copy/paste
set t_BE=
set t_ut=

" for GLSL
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

" set term=xterm-256color

autocmd Syntax * syntax match Function /\k\+\%(\s*[{('"]\)\@=/
syn match Function /\k\+\%(\s*[{('"]\)\@=/


set completeopt-=preview
" set completeopt+=longest,menuone,noselect
" let g:jedi#popup_on_dot = 0  " It may be 1 as well
" set completeopt+=menuone,noselect
" let g:mucomplete#enable_auto_at_startup = 1
" set shortmess+=c   " Shut off completion messages

" set completeopt+=menuone,longest,preview
set completeopt+=menuone,longest

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE 
"guibg=NONE guifg=NONE
set cursorline

let g:SuperTabDefaultCompletionType = "<c-n>"



" LeaderF settings

" search functions
noremap <Leader>ts  :Leaderf function<CR>

" search files
noremap <Leader>fs :Leaderf file<CR>
let g:Lf_WorkingDirectoryMode = 'Ac'
    
let tabulousLabelNumberStr = ':'
let tabulousLabelRightStr = ']'
let tabulousLabelNameLeftStr = '['

let tabulousLabelNameOptions = ':t'

let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

highlight Comment cterm=italic gui=italic

" setlocal spell
" setlocal spell spelllang=en_us
" au BufRead,BufNewFile *.tex set spell

" let g:Tex_ViewRule_pdf='code'
let g:Tex_ViewRule_pdf='xreader'
set visualbell
set t_vb=



if &term =~ '^xterm'
    " solid underscore
    let &t_SI .= "\<Esc>[6 q"
    " solid block
    let &t_EI .= "\<Esc>[2 q"
    " 1 or 0 -> blinking block
    " 3 -> blinking underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
endif


