return {
	{
		"folke/snacks.nvim",
		priority = 1000, -- load first
		lazy = false,
		opts = {
			-- indent lines
			indent = { animate = { enabled = false } },
			-- disable some features for big files 1.5MB i think
			bigfile = { enabled = true },
			-- undo tree
			picker = { enabled = true },
			-- terminal
			win = { style = "terminal" },
		},
		config = function(_, opts)
			-- setup
			require("snacks").setup(opts)
		end,
		keys = {
			{
				"<leader>u",
				function()
					Snacks.picker.undo()
				end,
				desc = "Undo Tree",
			},
			{
				"<leader>t",
				function()
					Snacks.terminal.toggle()
				end,
				desc = "Open Terminal",
			},
		},
	},
}
