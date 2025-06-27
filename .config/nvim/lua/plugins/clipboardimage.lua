
return {
  "Traap/clipboard-image.nvim",
  --"ekickx/clipboard-image.nvim",
  event = { "BufReadPost", "BufNewFile" },
  enabled = true,

  keys = {
    {"<leader>pi", "<cmd>PasteImg<cr>", "Save and Past Image"}
  },

  config = function()
    require("clipboard-image").setup({
      default  = {
        img_dir     = "img",
        --img_dir     = {"img", "%:t:r"},
        --img_dir_txt = {"img", "%:t:r"},
        img_dir_txt = "img",
        img_name = function() return os.date('%Y-%m-%d-%H-%M-%S') end, -- Example result: "2021-04-13-10-04-18"
        affix  = ".image %s",
      },
      markdown = { affix = "![](%s)" },
      tex      = { affix = "{\\includegraphics{%s}}" },
      wiki     = { affix = "![](%s)" },
    })
  end,
}

--return {
--  {
--    'ekickx/clipboard-image.nvim',
--    event = { "BufReadPost", "BufNewFile" }, 
--    enabled = true,
--  config = function()
--         require("clipboard-image").setup({
--        default = {
 --         img_dir = "img",
--          img_name = function() return os.date('%Y-%m-%d-%H-%M-%S') end, -- Example result: "2021-04-13-10-04-18"
--          affix = "<\n.image %s\n>" -- Multi lines affix
--        },
--      })
--    end,
--  }
--}

