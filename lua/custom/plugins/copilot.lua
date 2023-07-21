return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					auto_trigger = true,
					keymap = {
						accept = "<C-l>",
						accept_word = false,
						accept_line = false,
						next = "<C-.>",
						prev = "<C-,>",
						dismiss = "<C/>",
					},
				},
				panel = { enabled = true },
			})
		end,
	},
}
