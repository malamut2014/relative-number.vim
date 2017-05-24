Enable / Disable relative number settings in Vim.

Preview
-------

<p align="center">
  <img src="http://javier.io/assets/img/vim-relative-number.gif"/><br>
</p>

Requirements
------------

* Vim 7.3+

Installation
------------

- [Vundle](https://github.com/gmarik/vundle) way (recommended), add the following to your $HOME/.vimrc file:

        Bundle 'javier-lopez/relative-number.vim'

    And run inside of vim:

        :BundleInstall

- [NeoBundle](https://github.com/Shougo/neobundle.vim) way:

        NeoBundle 'javier-lopez/relative-number.vim'

    And run inside of vim:

        :NeoBundleInstall

- [Pathogen](https://github.com/tpope/vim-pathogen) way:

        $ git clone https://github.com/javier-lopez/relative-number.vim.git ~/.vim/bundle/relative-number.vim

- **Manual** (simplest if you've never heard of vundle or pathogen), download the zip file generated from github and extract it to $HOME/.vim

        mv relative-number.vim*.zip $HOME/.vim
        cd $HOME/.vim && unzip relative-number.vim*.zip

    Update the help tags from vim:

        :helpt ~/.vim/doc/

Usage
-----

:RelativeNumberToggle (or <kbd>\<Leader\>n</kbd>) to toggle the relative number settings.
