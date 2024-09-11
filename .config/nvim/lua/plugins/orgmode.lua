return {
	"nvim-orgmode/orgmode",
	ft = "org",
	event = "VeryLazy",
	config = function()
		require("orgmode").setup({
			org_todo_keywords = {"TODO(t)", "NEXT(n)", "WAITING(w)", "|", "DONE"},
		})
	end,
}
