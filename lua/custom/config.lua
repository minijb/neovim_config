-- delete autoformat

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "cpp" },
  callback = function()
    vim.b.autoformat = false
  end,
})

local group = vim.api.nvim_create_augroup("Markdown Wrap Settings", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.md",
	group = group,
	callback = function()
		vim.wo.wrap = false
	end,
})
