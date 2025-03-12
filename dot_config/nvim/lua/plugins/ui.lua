return {
	{
		"sphamba/smear-cursor.nvim",
		opts = {},
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = {},
		keys = {
			{ "<leader>e", "<CMD>NvimTreeToggle<CR>" },
		},
	},
	{
		"frabjous/knap",
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			vim.cmd.colorscheme("terafox")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
}
