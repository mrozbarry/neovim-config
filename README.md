# Neovim Configuration

Just a new config, trying to trim down and learn the lua interface a bit more.

## Install

### Prerequisites

 - Neovim 0.9.0
 - Treesitter

### Clone it

 - `git clone https://github.com/mrozbarry/neovim-config.git --depth 1 ~/.config/nvim`

### Install packages

 - `nvim -u ~/.config/nvim/init.lua +PackerUpdate +PackerInstall +qa`

## Keybinds

 - Normal mode
     - `,d`          => toggle file structure pane
     - `Ctrl+Arrows` => resize pane
     - `Ctrl+hjlk`   => move to pane or create pane in direction
     - `,ff`         => find files
     - `,fg`         => find content in files
     - `,fb`         => find in buffers/tabs
     - `,fh`         => search help topics
     - `,p`          => command palette
     - `Ctrl+r`      => find reference under cursor
     - `Ctrl+i`      => find implementation under cursor
     - `Ctrl+d`      => find definition under cursor
     - `Ctrl+g`      => current file structure
