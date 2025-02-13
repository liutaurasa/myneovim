return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	enabled = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			symlink_target = true,
		})
		-- vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
		vim.api.nvim_set_keymap("n", "<C-n>", ":Neotree toggle=true<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
		--
	end,
}
