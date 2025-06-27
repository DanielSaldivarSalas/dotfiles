
return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
    lazy = false,
  },
  {
    "nvim-neorg/neorg",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "luarocks.nvim" }, 
      { "laher/neorg-exec" },
      -- { 'nvim-neorg/neorg-telescope' },

      { '3rd/image.nvim' ,
        config = function()
          require("image").setup({
            backend = "kitty",
            integrations = {
              markdown = {
                enabled = true,
                clear_in_insert_mode = false,
                download_remote_images = true,
                only_render_image_at_cursor = false,
                filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
              },
              neorg = {
                enabled = true,
                clear_in_insert_mode = false,
                download_remote_images = true,
                only_render_image_at_cursor = false,
                filetypes = { "norg" },
              },
            },
            max_width = nil,
            max_height = nil,
            max_width_window_percentage = nil,
            max_height_window_percentage = 50,
            window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
            -- window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
            editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
            tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
            hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" }, -- render image files as images when opened
          }) 
        end
      }, -- here I have the pasted default config from image.nvim's readme, but it won't  fit into a discord message
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
                prm = "~/norg/prm",
                journal = "~/norg/journal",
                meetings = "~/norg/meetings",
                books = "~/norg/books",
              },
            },
          },
          ["core.looking-glass"] = {},
          ["core.journal"] = {
            config = {
              strategy = "flat",
              journal_folder = "~/norg/journal",
            }
          },                  -- Enables support for the journal module
        --  ['core.integrations.telescope'] = {},
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
   
