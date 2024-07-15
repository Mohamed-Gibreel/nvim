return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		-- Import comment plugin safely
		local comment = require("Comment")
		local wk = require("which-key")

		local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

		-- Enable comment
		comment.setup({
			-- For commenting tsx, jsx, svelte, html files
			pre_hook = ts_context_commentstring.create_pre_hook(),
		})

		wk.add({
			{ "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Comment" },
			{ "<leader>/", "<Plug>(comment_toggle_linewise_visual)", desc = "Comment", mode = "v" },
		})
	end,
}
