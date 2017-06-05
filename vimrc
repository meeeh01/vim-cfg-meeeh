call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }

" Typescript-vim
Plug 'leafgarland/typescript-vim'

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Vim-js-pretty-template
Plug 'Quramy/vim-js-pretty-template'

autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" Vimproc
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Tsquyomi
Plug 'Quramy/tsuquyomi'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Configuration for TSUQUYOMI+SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 

" Angular 2 snippets
Plug 'magarcia/vim-angular2-snippets'

" Theme configuration
Plug 'crusoexia/vim-monokai'
set t_Co=256
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" Theme Molokai Configuration

let g:molokai_original = 1
let g:rehash256 = 1

" Vim-autoformat
Plug 'Chiel92/vim-autoformat'

" Vim-Go
Plug 'fatih/vim-go'

" Vim-jsbeautify
Plug 'maksimr/vim-jsbeautify'

call plug#end()


" Style Theme
syntax on
colorscheme m333hnokai
set number

" NERDTreeMapping
map <C-n> :NERDTreeToggle<CR>

" Configuring shortcuts
inoremap jk <ESC>
inoremap <C><CR> :YouCompleteMe GoToDeclaration<CR>

" GO Config
let g:go_fmt_command = "goimports"

" Autoformat Options
let g:indent_script1 = "inc" 
let g:html_indent_style1 = "inc" 
let g:html_indent_inctags = "html,body,head"

" for javascript
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>"
