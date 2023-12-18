return {
	'mhartington/formatter.nvim',
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
				vue = function()
					local M = {}
					local defaults = require "formatter.defaults"
					local util = require "formatter.util"
					M.vue = util.withl(defaults.eslint_d, "vue")
					return M
				end,
			},
			["*"] = {
				require("formatter.filetypes.any").remove_trailing_whitespace,
			},
		})
	end
}
