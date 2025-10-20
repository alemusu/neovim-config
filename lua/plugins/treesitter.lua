require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "bash", "lua", "python", "javascript", "html", "css" }, -- or "all"
  highlight = {
    enable = true,              -- enable syntax highlighting
    additional_vim_regex_highlighting = false, -- disable legacy regex highlighting
  },
}

