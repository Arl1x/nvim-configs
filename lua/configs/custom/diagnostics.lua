vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = true,
})

local enabled = true

vim.keymap.set("n", "gK", function()
    enabled = not enabled
    vim.diagnostic.config({
        virtual_text = enabled,
        virtual_lines = not enabled,
    })
end)
