return {
  {
    "nvim-neorg/neorg",
    opts = {
      load = {

        ["core.defaults"] = {},
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
        ["core.highlights"] = {},

        ["core.looking-glass"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes", -- Format: <name_of_workspace> = <path_to_workspace_root>
              my_other_notes = "~/work/notes",
            },
            default_workspace = "notes",
          },
          icons = {
            todo = {
              done = { icon = "✔" }, -- no extra wrapping bryyackets here
            },
          },
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
}
