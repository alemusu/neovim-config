local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Find files in git repo' })
vim.keymap.set('n', '<C-g>', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })	
end, { desc = 'Search with grep' })
