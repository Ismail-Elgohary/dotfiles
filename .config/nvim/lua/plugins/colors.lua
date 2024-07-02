return {
	{
		"AlexvZyl/colorsoft.nvim",
		lazy = false,
		priority = 1000,
		config = function()
	 		require("1colorsoft").setup({
				override = {
					["StatusLine"] = { fg = "none" },
				},
				telescope = { style = "classic" },
			})
			require("1colorsoft").load()
		end,
	},
}
