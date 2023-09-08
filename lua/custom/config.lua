-- delete autoformat

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "cpp" },
  callback = function()
    vim.b.autoformat = false
  end,
})
