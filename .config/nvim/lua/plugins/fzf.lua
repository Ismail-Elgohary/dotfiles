return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts, {
      fzf_opts = {
        ["--layout"] = "default",
      },

      files = {
        resume = true,
        cwd_prompt = true,
      },
      grep = {
        rg_glob = true,
        glob_flag = "--iglob",
        glob_separator = "%s%-%-",
        resume = true,
        cwd_prompt = true,
      },
    })
  end,
}
