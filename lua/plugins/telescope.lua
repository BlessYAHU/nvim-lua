local teleScope = {
	"nvim-telescope/telescope.nvim",
	tag = '0.1.4',
	enabled = true,
    cond = vim.g.vscode == nil,
	lazy = false,
	ft = 'mason',
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-project.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build" },
	},
	cmd = "Telescope",
}

return teleScope
