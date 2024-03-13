return
        {
            {'akinsho/toggleterm.nvim', version = "*", opts = {
                direction = 'float'
         },
          keys = {
            { "<leader>tt", "<cmd>ToggleTerm size=40 dir=. direction=float<cr>"} --, desc = "Open a horizontal terminal at the Desktop directory" }
            },
         }
}
