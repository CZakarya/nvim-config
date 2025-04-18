return {
	{
		"dense-analysis/ale",
		config = function()
			-- Make the Lua LS not freak out about the undefined globals
			vim.g.ale_linters = {
				lua = { 'sumneko_lua' },
			}

			vim.g.ale_lua_sumneko_lua_executable = 'lua-language-server'
			vim.g.ale_lua_sumneko_lua_options = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { 'vim', 'Snacks' },
						},
					},
				},
			}
		end
	},
}
