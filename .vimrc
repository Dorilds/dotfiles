""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc file
"
" Pathogen
"execute pathogen#infect()
"
set background=dark
set nocompatible
filetype on
set rtp+=~/.vim/bundle/vundle/
" Vundle
call vundle#begin()
Plugin 'VundleVim/vundle.vim'
Plugin 'bundle/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'w0ng/vim-hybrid'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jreybert/vimagit'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
call vundle#end()
syntax enable
syntax on
colorscheme hybrid
"
" Set Lines
set number
"
" Use Mouse
set mouse=a
"
" so I can paste with the mouse (hit F2 to toggle)
set pastetoggle=<F2>
"
" auto backups
"set backup
" backup file name extension
"set backupext=.foo
"
" no autowrap of lines
set wrapmargin=0
"
" have fifty lines of command-line (etc) history:
set history=500
"
" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full
"
" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd
"
" use indents of 2 spaces, and have them copied down lines:
"set shiftwidth=2
" Rich and PEP 8 say 4 spaces....uncomment this if you want 4 spaces
set shiftwidth=4
set shiftround
set expandtab
set autoindent
"
" enable filetype detection:
"
filetype indent on
filetype plugin on
"
" in human-language files, automatically format everything at 72 chars:
autocmd FileType mail,human set formatoptions+=t textwidth=72

" for C-like programming, have automatic indentation:
autocmd FileType c,cpp,slang set cindent

" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro

" for Perl programming, have things in braces indenting themselves:
autocmd FileType perl set smartindent

" for python
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" for HTML, generally format text, but if a long line has been created leave it
" alone when editing:
autocmd FileType html set formatoptions+=tl

" for both CSS and HTML, use genuine tab characters for indentation, to make
" files a few bytes smaller:
autocmd FileType html,css set noexpandtab tabstop=4

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" use <F6> to cycle through split windows (and <Shift>+<F6> to cycle backwards,
" where possible):
nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W

" python run with F9
map <f9> :w<CR>:!python %<CR>
"
"
" end .vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
"##let s:opam_share_dir = system("opam config var share")
"##let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

"##let s:opam_configuration = {}

"##function! OpamConfOcpIndent()
  "  ##execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
 " ##endfunction
"##let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

"##function! OpamConfOcpIndex()
  "  ##execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
 " ##endfunction
"##let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

"##function! OpamConfMerlin()
   " ##let l:dir = s:opam_share_dir . "/merlin/vim"
  "##execute "set rtp+=" . l:dir
 " ##endfunction
"##let s:opam_configuration['merlin'] = function('OpamConfMerlin')

"##let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
"##let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
"##let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
"##for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
 " ##if count(s:opam_available_tools, tool) > 0
    "  ##call s:opam_configuration[tool]()
   " ##endif
  "##endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
" ## added by OPAM user-setup for vim / ocp-indent ## dbd76601da6b5d09f58dc38926e720f4 ## you can edit, but keep this line
"if count(s:opam_available_tools,"ocp-indent") == 0
"source "/home/zpalmer/public/cs73/s18/opam-root/4.06.0/share/vim/syntax/ocp-indent.vim"
"endif
" ## end of OPAM user-setup addition for vim / ocp-indent ## keep this line
