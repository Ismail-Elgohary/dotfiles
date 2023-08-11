require("nvim-treesitter.configs").setup( {
	ensure_installed = {"c", "html", "css", "rust", "go", "python", "lua", "bash", "vimdoc", "javascript" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable  = true,
		additional_vim_regex_highlighting = false,
	},
})
 






