-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.keymap.set("n", "<leader>nn", "<Plug>(neorg.dirman.new-note)", {})
