return {
  {
    "nvim-neorg/neorg",
    dependencies = {
       { "nvim-lua/plenary.nvim" } ,
       { "laher/neorg-exec" }
    },
  --  keys = {
   -- { "<leader>ne", ":Neorg export to-file ", desc = "Export file" },
   -- { "<leader>nt", "<cmd>Neorg tangle current-file<cr>", desc = "Tangle file" },
  --  { "<leader>np", "<cmd>Neorg presenter<cr>", desc = "Presenter" },
   -- { "<leader>nmi", "<cmd>Neorg inject-metadata<cr>", desc = "Inject" },
  --  { "<leader>nmu", "<cmd>Neorg update-metadata<cr>", desc = "Update" },
   -- { "<leader>nol", "<cmd>Neorg toc left<cr>", desc = "Open ToC (left)" },
    --{ "<leader>nor", "<cmd>Neorg toc right<cr>", desc = "Open ToC (right)" },
   -- { "<leader>noq", "<cmd>Neorg toc qflist<cr>", desc = "Open ToC (quickfix list)" },
 -- },
  --build = ":Neorg sync-parsers",
    config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
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
              }
         --  config = {
           --   neorg_leader = ",",
  },
      },
    }
  end,
    }}
    --opts = {
     -- load = {

   --     ["core.defaults"] = {},

   --   ["core.journal"] = {
    --     config = {
    --        strategy = "flat",
    --     }
   --      },
   --     ["core.concealer"] = {
   --       config = {
   --         icon_preset = "varied",
   --         icons = {
   --           todo = {

   --             done = { icon = "✔" }, -- no extra wrapping bryyackets here
   --           },
   --         },
   --       },
   --     }, -- Adds pretty icons to your documents
   --     ["core.highlights"] = {},
  ---     ["core.looking-glass"] = {},
  --      ["core.keybinds"] = {
  --        config = {
      --      hook = function(keybinds)
              -- Binds the `gtd` key in `norg` mode to execute `:echo 'Hello'`
    --          keybinds.map("norg", "n", "gtd", "<cmd>echo 'Hello!'<CR>")
   --         end,
  --        },
  --      },
 --       ["core.dirman"] = {
 --         config = {
  --          workspaces = {
  --            notes = "~/notes", -- Format: <name_of_workspace> = <path_to_workspace_root>
  --            my_other_notes = "~/work/notes",
 --           },
 ---           default_workspace = "notes",
   --       },
  --        icons = {ddd
  --          todo = {
 --             done = { icon = "✔" }, -- no extra wrapping bryyackets here
--            },
 --         },
   --     },
  --    },
 --   },
