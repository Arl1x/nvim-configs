local map = vim.keymap.set

map(
    "n", "db", function()
        require("dap").toggle_breakpoint()
    end,
    { desc = "Toggle DAP Breakpoint" }
)

map(
    "n", "dr", function()
        require("dap").continue()
    end,
    { desc = "Start or continue DAP" }
)
