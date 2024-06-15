return {
	"nvim-tree/nvim-tree.lua",
  	version = "*",
  	lazy = false,
  	dependencies = {
		"nvim-tree/nvim-web-devicons",
  	},

	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		vim.opt.termguicolors = true

		require("nvim-tree").setup(
			{
			}
		)

		vim.keymap.set("n", "<Leader>ee","<cmd>NvimTreeToggle<CR>", {desc= "Toggle File Explorer"})
		vim.keymap.set("n", "<Leader>ef","<cmd>NvimTreeFocus<CR>", {desc= "Focus on the File Explorer"})
		vim.keymap.set("n", "<Leader>er","<cmd>NvimTreeRefresh<CR>", {desc= "Refreshes the File Explorer"})
		vim.keymap.set("n", "<Leader>ec","<cmd>NvimTreeCollapse<CR>", {desc= "Collapse All Folders"})
	end,
}
