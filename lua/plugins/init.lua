return {
    -- LSP
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.custom.lspconfig"
        end,
    },
    -- Formatting
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = function()
            return require "configs.conform"
        end,
    },
    -- Linting
    {
        "mfussenegger/nvim-lint",
        event = "VeryLazy",
        config = function()
            require "configs.custom.lint"
        end,
    },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "BufReadPost",
        config = function()
            vim.schedule(function()
                require "configs.custom.treesitter"
            end)
        end,
    },
    -- dap
    {
        "mfussenegger/nvim-dap",
        keys = { "db", "dr" },
        config = function()
            require "configs.custom.dap"
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            require "configs.custom.dap-ui"
        end,
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            require "configs.custom.dap-python"
        end,
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        config = function()
            require "configs.custom.mason-dap"
        end,
    },
    -- Installs
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "basedpyright",
                "bash-language-server",
                "css-lsp",
                "docker-compose-language-service",
                "docker-language-server",
                "dockerfile-language-server",
                "dotenv-linter",
                "gradle-language-server",
                "html-lsp",
                "jdtls",
                "json-lsp",
                "jsonlint",
                "lua-language-server",
                "marksman",
                "nginx-language-server",
                "phpactor",
                "ruff",
                "shfmt",
                "sphinx-lint",
                "sqls",
                "sqruff",
                "stylua",
                "systemd-language-server",
                "systemdlint",
                "vim-language-server",
                "yaml-language-server",
            },
        },
    },
    {
        "nvim-neotest/nvim-nio",
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
    },
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
    },
    {
        "nvim-tree/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeOpen" },
    },
}
