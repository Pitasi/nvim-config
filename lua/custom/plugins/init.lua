return {
	{
		'ggandor/leap.nvim',
		dependencies = { "tpope/vim-repeat" },
		config = function()
			require('leap').add_default_mappings()
		end
	},
	{
		'nvim-pack/nvim-spectre',
		config = function()
			vim.keymap.set('n', '<leader>sS', require("spectre").open,
				{ desc = '[S]earch and replace (spectre)' })
		end
	},
	'mbbill/undotree',
	{
		'jose-elias-alvarez/null-ls.nvim',
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.goimports,
				},
			})
		end
	},
	{
		"stevearc/dressing.nvim",
		opts = {
			input = {
				default_prompt = "➤ ",
				win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" },
			},
			select = {
				backend = { "telescope", "builtin" },
				builtin = { win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" } },
			},
		},
	},
	{
		"ThePrimeagen/harpoon",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local mark = require('harpoon.mark')
			local ui = require('harpoon.ui')
			vim.keymap.set('n', '<leader>a', mark.add_file, { desc = "Harpoon file" })
			vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = "Harpoon toggle quick menu" })

			vim.keymap.set('n', '<C-b>', function() ui.nav_file(1) end, { desc = "Jump to Harpoon file 1" })
			vim.keymap.set('n', '<C-y>', function() ui.nav_file(2) end, { desc = "Jump to Harpoon file 2" })
			vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end, { desc = "Jump to Harpoon file 3" })
			vim.keymap.set('n', '<C-m>', function() ui.nav_file(4) end, { desc = "Jump to Harpoon file 4" })
		end
	},
	"nvim-treesitter/nvim-treesitter-context",
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		config = function()
			vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
				{ silent = true, noremap = true }
			)

			vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
				{ silent = true, noremap = true }
			)
		end,
	},
}
