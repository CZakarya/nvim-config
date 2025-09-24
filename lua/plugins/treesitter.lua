return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"svelte",
				"go",
				"typescript",
				"javascript",
				"html",
				"css",
				"scss",
				"rust",
				"yaml",
				"gdscript",
			},
			highlight = {
				enable = true,
			},
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
	{
		"windwp/nvim-ts-autotag",
	},
}
