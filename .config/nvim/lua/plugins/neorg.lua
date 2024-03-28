
return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
  },
  {
    "nvim-neorg/neorg",
    dependencies = { { "luarocks.nvim" }, { "laher/neorg-exec" } },
    -- put any other flags you wanted to pass to lazy here!
    config = function()
      require("neorg").setup({

        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.ui"] = {}, -- Loads default behaviour
          ["core.concealer"] = {

            config = {
              icon_preset = "varied",
              icons = {
                todo = {

                  done = { icon = "✔" }, -- no extra wrapping bryyackets here
                },
              },
            },
          }, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
                crm = "~/norg/crm",
              },
            },
          },
          ["core.looking-glass"] = {},
          ["external.exec"] = {},
          ["core.keybinds"] = {
            config = {
              default_keybinds = true,
              neorg_leader = " ",
              hook = function(keybinds)
                keybinds.map("norg", "n", "nt", "<cmd>Neorg tangle current-file<CR>")
                keybinds.map("norg", "n", "<tab>", "za")
              end,
            },
            --  config = {
            --   neorg_leader = ",",
          },
        },
      })
    end,
  },
}
   
