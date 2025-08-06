return {
	{
		"stevearc/conform.nvim",

		opts = {
			{
				formatters_by_ft = {
					json = { "prettier" },
					lua = { "stylua" },
				},
			},
		},
		config = function(_, opts)
			require("conform").setup(opts)
		end,
	},
}
