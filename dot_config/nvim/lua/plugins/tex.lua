return {
	{
		init = function()
			vim.g.knap_settings = {
				textopdfviewerlaunch = "zathura --synctex-editor-command 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%{input}'\"'\"',%{line},0)\"' %outputfile%",
				textopdfviewerrefresh = "none",
				textopdfforwardjump = "zathura --synctex-forward=%line%:%column%:%srcfile% %outputfile%",
			}
		end,
		"frabjous/knap",
		keys = {
			-- F5 processes the document once, and refreshes the view
			{
				mode = { "n", "v", "i" },
				"<F5>",
				function()
					require("knap").process_once()
				end,
			},

			-- F6 closes the viewer application, and allows settings to be reset
			{
				mode = { "n", "v", "i" },
				"<F6>",
				function()
					require("knap").close_viewer()
				end,
			},

			-- F7 toggles the auto-processing on and off
			{
				mode = { "n", "v", "i" },
				"<F7>",
				function()
					require("knap").toggle_autopreviewing()
				end,
			},

			-- F8 invokes a SyncTeX forward search, or similar, where appropriate
			{
				mode = { "n", "v", "i" },
				"<F8>",
				function()
					require("knap").forward_jump()
				end,
			},
		},
	},
}
