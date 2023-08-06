vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Open netrw file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {
	desc = '[ pv] Open Vim File Explorer'
})

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})

--remap to move next line to current lines end without losing current cursor position
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {
	desc = '[K] Move highlighted lines up (visual)'
})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {
	desc = '[J] Move highlighted lines up (visual)'
})

--remap to move next line to current lines end without losing current cursor position
vim.keymap.set("n", "J", "mzJ`z", {
	desc = '[J] Move next line to end of current line, persist cursor'
})

-- Move half page up or down and keep cursor at center
vim.keymap.set("n", "<C-d>", "<C-d>zz", {
	desc = '[Ctrl d] Move half page down, keer cursor at center'
})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {
	desc = '[Ctrl u] Move half page up, keer cursor at center'
})

--Keep cursor at center while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--Don't loose copy after pasting over highlighted text
vim.keymap.set("x", "<leader>p", [["_dP]], {
	desc = '[ p] Do not loose current copy after pasting over highlighted text'
})

--Copy to systems copy buffer
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], {
	desc = '[ y] Copy to system clipboard / buffer'
})
vim.keymap.set("n", "<leader>Y", [["+Y]], {
	desc = '[ y] Copy to system clipboard / buffer'
})

--Delete to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], {
	desc = '[ d]'
})

vim.keymap.set("n", "Q", "<nop>")


--Replace text under cursor in whole page
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
	desc = '[ s] Replace text under cursor in whole page'
})

--Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = '[ x] Make current file executable' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
