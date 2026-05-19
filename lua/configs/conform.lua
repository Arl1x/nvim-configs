local options = {
    formatters_by_ft = {
        python = { "ruff_format" },
        lua = { "stylua" },
    },

    formatters = {
        -- Python
        ruff = {
            prepend_args = {},
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },

    notify_on_error = true,
    notify_no_formatters = true,
}

require("conform").setup(options)
