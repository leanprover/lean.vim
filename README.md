# vim syntax support for Lean

This plugins provides basic syntax highlighting for [Lean](https://leanprover.github.io/) files.

Installation using [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'leanprover/lean.vim'
```

## Auto-completion and error highlighting

[![asciicast](https://asciinema.org/a/6sllbd28ukojeahnaqra0kaqv.png)](https://asciinema.org/a/6sllbd28ukojeahnaqra0kaqv)

You can even get auto-completion and error highlighting using separate plugins that implement the [Language Server Protocol](https://github.com/Microsoft/language-server-protocol).  First, install the Lean language server implementation.

```
$ npm install -g lean-language-server
```

For neovim, you can use the [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim) plugin (be warned, it sometimes hangs):
```vim
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'lean': ['lean-language-server', '--stdio'],
    \ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
```
