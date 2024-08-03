return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		-- language server
		-- need to install cmake
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "clangd", "cmake" },
		})

		-- formatters and linters
		-- need to install clang-format
		require("mason-tool-installer").setup({
			ensure_installed = { "stylua" },
		})
	end,
}
