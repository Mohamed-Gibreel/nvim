return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<C-x>"] = actions.delete_buffer,
						["<C-v>"] = actions.file_vsplit,
						["<C-h>"] = actions.file_split,
					},
				},
			},
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
				buffers = {
					ignore_current_buffer = true,
					sort_lastused = true,
				},
			},
		})

		-- builtin.buffers({ sort_lastused = true, ignore_current_buffer = true })

		telescope.load_extension("fzf")

		--Set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set(
			"n",
			"<leader>fc",
			"<cmd>Telescope grep_string<cr>",
			{ desc = "Find string under cursor in current file" }
		)
		keymap.set("n", "<leader>cs", "<cmd>Telescope colorscheme<cr>", { desc = "Open color scheme" })
		keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Open buffers" })
		keymap.set(
			"n",
			"<leader>fp",
			"<cmd>lua require('telescope').extensions.projects.projects()<cr>",
			{ desc = "Open recent projects" }
		)

		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
	end,
}
