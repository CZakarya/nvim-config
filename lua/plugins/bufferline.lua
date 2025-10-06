return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				always_show_bufferline = false,
				separator_style = "slope",
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "snacks_layout_box",
					},
				},
				hover = {
					enable = true,
					delay = 0,
					reveal = { "close" },
				},
			},
		},
		config = function(_, opts)
			require("bufferline").setup(opts)
		end,
	},
}
