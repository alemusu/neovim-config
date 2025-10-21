-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require'nvim-tree'.setup {
    view = {
        -- it makes tree float and transparent
        float = {
            enable = true,
        },
    },
}

-- keymap to toggle tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

