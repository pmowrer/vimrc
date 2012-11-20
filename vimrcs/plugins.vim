" Setting up Vundle - the vim plugin bundler
" From: http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let iCanHazVundle=1
let vundle_readme=expand('$HOME/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set nocompatible

" Setting filetype off if it wasn't already on can cause git to exit with
" true error code, causing problems when used with git commit messages.
" http://tooky.co.uk/2010/04/08/there-was-a-problem-with-the-editor-vi-git-on-mac-os-x.html
filetype on

" Required for Vundle.
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle: Let Vundle manage Vundle (required)! 
Bundle 'gmarik/vundle'

" TagBar: displays tags in a window, ordered by class etc.
Bundle 'majutsushi/tagbar' 

" Nerdtree: File explorer
Bundle 'scrooloose/nerdtree'

" VimJavascript: Vastly improved vim's javascript indentation
Bundle 'pangloss/vim-javascript'

" VimLess: vim syntax for LESS (dynamic CSS)
Bundle 'groenewege/vim-less'

" VimCSS3Syntax: Add CSS3 syntax support to vim's built-in syntax/css.vim.
Bundle 'hail2u/vim-css3-syntax'

" VimPowerline: The ultimate vim statusline utility.
Bundle 'Lokaltog/vim-powerline'

" VimSurround: quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'

" CtrlP: Fuzzy file, buffer, mru, tag, etc finder 
Bundle 'kien/ctrlp.vim'

" TomorrowNight: color scheme
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim'}

" VimMarkdown: Markdown syntax highlighting
Bundle 'tpope/vim-markdown'

" Ragtag: A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP 
Bundle 'tpope/vim-ragtag'

" MatchIt: Extended % matching for HTML, LaTeX, and many other languages
Bundle 'vimcn/matchit.vim'

" Synctastic: Syntax checking hacks for vim
Bundle 'scrooloose/syntastic'

" VimGroovy: Syntax-highlighting for Groovy
Bundle 'vim-scripts/groovy.vim'

" Installing plugins the first time
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif


