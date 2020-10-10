# vim syntax support for Lean

This plugins provides basic syntax highlighting for [Lean](https://leanprover.github.io/) files.

Installation using [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'leanprover/lean.vim'
```

## Auto-completion and error highlighting

[![asciicast](./asciicast.gif)](https://asciinema.org/a/6sllbd28ukojeahnaqra0kaqv)

You can even get auto-completion and error highlighting using separate plugins that implement the [Language Server Protocol](https://github.com/Microsoft/language-server-protocol).  First, install the Lean language server implementation.

```
$ npm install -g lean-language-server
```

An example setup [using coc.nvim is here](https://github.com/Julian/dotfiles/blob/bdd22d917561c9c115c4b41a54d5fc327249c230/.config/nvim/coc-settings.json#L3-L9).
