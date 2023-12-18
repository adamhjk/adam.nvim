return {
	'mhartington/formatter.nvim',
	lazy = false,
	keys = {
		{ "<leader>f", "<cmd>Format<cr>", desc = "Format" },
	},
	config = function()
		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.DEBUG,
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				vue = {
					require("formatter.filetypes.typescript").eslint_d,
				},
				typescript = {
					require("formatter.filetypes.typescript").eslint_d,
				}
			},
			["*"] = {
				require("formatter.filetypes.any").remove_trailing_whitespace,
			},
		})
	end
}
