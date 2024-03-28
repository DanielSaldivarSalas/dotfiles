
return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
  },
  {
    "nvim-neorg/neorg",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "luarocks.nvim" }, 
      { "laher/neorg-exec" },
      { 'nvim-neorg/neorg-telescope' },
      { '3rd/image.nvim' }, -- here I have the pasted default config from image.nvim's readme, but it won't  fit into a discord message
        end,
    },
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
          ['core.integrations.telescope'] = {},
          ['core.integrations.image'] = {},
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
   
