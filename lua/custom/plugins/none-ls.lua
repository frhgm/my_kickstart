local M = {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "mason.nvim" },
	opts = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local code_actions = null_ls.builtins.code_actions
		local completion = null_ls.builtins.completion
		return {
			sources = {
				formatting.stylua,
				formatting.prettier,
				formatting.eslint,
				diagnostics.eslint,
				diagnostics.tsc,
				code_actions.eslint,
				code_actions.gitsigns,
				completion.spell
			},
		}
	end,
}

return {}
-- return M
