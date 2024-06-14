return {
	{
      "supermaven-inc/supermaven-nvim",
      config = function()
        require("supermaven-nvim").setup({
	  keymaps = {
	    accept_suggestion = "<C-l>",
	  },
        })
      end,
    },
	-- {
	-- 	"github/copilot.vim",
	-- 	cmd = "Copilot",
	-- 	event = "InsertEnter",
	-- 	config = function()
	-- 		-- imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
	-- 		vim.g.copilot_no_tab_map = true
	-- 		vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

	-- 		-- require("copilot").setup({
	-- 		-- 	suggestion = {
	-- 		-- 		auto_trigger = true,
	-- 		-- 		keymap = {
	-- 		-- 			accept = "<C-l>",
	-- 		-- 			accept_word = false,
	-- 		-- 			accept_line = false,
	-- 		-- 			next = "<C-.>",
	-- 		-- 			prev = "<C-,>",
	-- 		-- 			dismiss = "<C/>",
	-- 		-- 		},
	-- 		-- 	},
	-- 		-- 	panel = { enabled = true },
	-- 		-- })
	-- 	end,
	-- },
}
