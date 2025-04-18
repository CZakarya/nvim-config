require("config.lazy")


-- Gruvbox theme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])


-- Vim config
local opt = vim.opt

opt.expandtab = false
opt.cursorline = true
opt.tabstop = 3
opt.wrap = false
opt.number = true
opt.spell = true
opt.spelllang = "en_us" -- Change to your preferred language


-- Commands
vim.api.nvim_create_user_command("Exp", function()
	Snacks.explorer.open()
end, { range = true })

vim.api.nvim_create_user_command("Fmt", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)
		    [1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })


-- Don't highlight Zakarya style multiline comments as an error
vim.cmd([[highlight link cCommentStartError cComment]])
