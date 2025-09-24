return {
	{
		"dense-analysis/ale",
		opts = {
			completion_enabled = true,
		},
		config = function(_, opts)
			require("ale").setup(opts)
		end
	},
}
