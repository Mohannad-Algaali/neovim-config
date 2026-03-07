# MOHANNAD's Neovim Config

This is my main NEOVIM configuration. 

## Plugins
It consists of the basic requirements for any code editor:
1. Treesitter: for code highlighting
2. Telescope: for searching and navigating code base.
3. LSP: provides suggestions, definitions and refactoring tools.
4. Neo-tree: a file tree for easier look into the project structure
5. Rest: for testing REST APIs.
6. Markview: a better view for markdown files.

## The Package Manager
- Lazy
- LuaRocks

## Structure
```bash .
├── init.lua
├── lua
│   ├── custom
│   │   ├── health.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   ├── options.lua
│   │   ├── plugins
│   │   │   ├── autopairs.lua
│   │   │   ├── blink.lua
│   │   │   ├── codeium.lua
│   │   │   ├── comments.lua
│   │   │   ├── conform.lua
│   │   │   ├── copilot.lua
│   │   │   ├── diagram.lua
│   │   │   ├── gitsigns.lua
│   │   │   ├── highlight-color.lua
│   │   │   ├── i18n.lua
│   │   │   ├── image.lua
│   │   │   ├── indent_line.lua
│   │   │   ├── inlay.lua
│   │   │   ├── lazydev.lua
│   │   │   ├── love.lua
│   │   │   ├── lsp.lua
│   │   │   ├── markview.lua
│   │   │   ├── mini.lua
│   │   │   ├── neo-tree.lua
│   │   │   ├── slides.lua
│   │   │   ├── surround.lua
│   │   │   ├── telescope.lua
│   │   │   ├── treesitter.lua
│   │   │   ├── typst.lua
│   │   │   └── which-key.lua
│   │   └── themes.lua
│   └── utils
│       └── i18n.lua
└── README.md
```
