require("config.lazy")

vim.o.background = "dark"

-- Theme selection
vim.cmd([[colorscheme onedark]])

-- Vim config
local opt = vim.opt

opt.title = true
opt.titlestring = "%t%( %M%)%( (" .. vim.fn.expand("%:~:h") .. ")%)%a - Neovim"
opt.expandtab = false
opt.cursorline = true
opt.tabstop = 3
opt.shiftwidth = 3
opt.wrap = false
opt.number = true
opt.spell = true
opt.spelllang = "en_us" -- Change to your preferred language

-- Commands
vim.api.nvim_create_user_command("Exp", function()
	Snacks.explorer.open()
end, { range = true })

vim.api.nvim_create_user_command("Term", function()
	Snacks.terminal()
end, { range = true })

vim.api.nvim_create_user_command("Fmt", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

-- Don't highlight Zakarya style multiline comments as an error
vim.cmd([[highlight link cCommentStartError cComment]])

-- Filetype specific options
vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.expandtab = true
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "svelte",
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.expandtab = true
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "css",
	callback = function()
		vim.opt_local.expandtab = true
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
	end,
})
