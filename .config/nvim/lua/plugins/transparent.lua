local M = {}

if vim.fn.has("unix") == 1 then -- Checks if the OS is Unix (or Unix-like) and not Windows
  table.insert(M, "xiyaowong/transparent.nvim")
end
return { M }
