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

        Bundle 'chilicuil/vim-relative-number'

    And run inside of vim:

        :BundleInstall

- [NeoBundle](https://github.com/Shougo/neobundle.vim) way:

        NeoBundle 'chilicuil/vim-relative-number'

    And run inside of vim:

        :NeoBundleInstall

- [Pathogen](https://github.com/tpope/vim-pathogen) way:

        $ git clone https://github.com/chilicuil/vim-relative-number.git ~/.vim/bundle/vim-relative-number

- **Manual** (simplest if you've never heard of vundle or pathogen), download the zip file generated from github and extract it to $HOME/.vim

        mv vim-relative-number*.zip $HOME/.vim
        cd $HOME/.vim && unzip vim-relative-number*.zip

    Update the help tags from vim:

        :helpt ~/.vim/doc/

Usage
-----

:RelativeNumberToggle (or <kbd>\<Leader\>n</kbd>) to toggle the relative number settings.
