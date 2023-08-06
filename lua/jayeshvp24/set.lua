vim.opt.nu = true
vim.opt.relativenumber = true

vim.o.mouse = 'a'
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.o.clipboard = 'unnamedplus'
vim.opt.smartindent = true
vim.o.breakindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.colorcolumn = "100"

vim.o.ignorecase = true
vim.o.smartcase = true
