local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>me", mark.add_file, {
  desc = "Mark File"
})
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, {
  desc = "Show harpoon toggle UI"
})

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-m>", function() ui.nav_file(4) end)
