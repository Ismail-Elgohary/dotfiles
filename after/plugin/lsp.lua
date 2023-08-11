local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  "tsserver",
  "rust_analyzer",
})

lsp.nvim_workspace()


local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
  ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
  ["<C-y>"] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = "E",
        warn = "W",
        hint = "H",
        info = "I"
    }
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local opts = { buffer = ev.buf, remap = false }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>aws", vim.lsp.buf.workspace_symbol, opts)
		vim.keymap.set("n", "<leader>ar", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<leader>af", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "<leader>ak", vim.diagnostic.goto_next, opts)
		vim.keymap.set("n", "<leader>aj", vim.diagnostic.goto_prev, opts)
		vim.keymap.set("n", "<leader>ac", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>vr", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>vf", vim.lsp.buf.format, opts)
		vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
	end
})


lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

