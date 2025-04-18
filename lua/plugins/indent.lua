return {
	{
		"nvimdev/indentmini.nvim",
		config = function()
			require("indentmini").setup()

			vim.cmd.highlight("IndentLine guifg=#444444") -- Set indent line color
		end,
	},
}
