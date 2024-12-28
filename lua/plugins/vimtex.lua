return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_mappings_enabled = 0
    vim.g.vimtex_view_method = "zathura"

    vim.api.nvim_set_keymap("n", "<leader>ml", ":VimtexCompile<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>mt", ":VimtexTocOpen<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>mv", ":VimtexView<CR>", { noremap = true, silent = true })
  end,
}
