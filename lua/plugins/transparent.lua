return {
	{
		"xiyaowong/transparent.nvim",
		opts = {
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			-- table: additional groups that should be cleared
			extra_groups = {},
			-- table: groups you don't want to clear
			exclude_groups = {},
			-- function: code to be executed after highlight groups are cleared
			-- Also the user event "TransparentClear" will be triggered
			on_clear = function() end,
		},
		config = function(_, opts)
			require("transparent").setup(opts)

			-- require("transparent").clear_prefix("Snacks") -- Seems to hide the selected line indicator as well, no good
			require("transparent").clear_prefix("lualine")
			-- require("transparent").clear_prefix("BufferLine") -- Doesn't work
		end,
	},
}
