return {
	{
		"m4xshen/autoclose.nvim",
		opts = {
			{
				keys = {
					--[[**
					* Here I'm removing the single quote "tick" character from autoclose
					* because I almost never use single quotes for string literals, but
					* I often use them as apostrophes (which should not be autoclosed).
					*]]
					["'"] = { escape = false, close = false, pair = "''" },
				},
			}
		},
		config = function(_, opts)
			require("autoclose").setup(opts)
		end,
	},
}
