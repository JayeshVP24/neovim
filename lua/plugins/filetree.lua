return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup {
			window = {
				width = 20,
			},
			event_handlers = {
				{
					event = "BufEnter",
					handler = function(_)
						require("neo-tree.sources.manager").focus(true)
					end
				},
			},
		}
	end,
}
