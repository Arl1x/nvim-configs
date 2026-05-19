local nvchad_lsp = require "nvchad.configs.lspconfig"

local servers = {
    "basedpyright",
    "bashls",
    "cssls",
    "docker_compose_language_service",
    "docker_language_server",
    "gradle-ls",
    "html",
    "jdtls",
    "jsonls",
    "lua_ls",
    "marksman",
    "nginx_language_server",
    "phpactor",
    "ruff",
    "sqls",
    "stylua",
    "systemd-ls",
    "vimls",
    "yamlls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
    vim.lsp.enable(lsp)
    vim.lsp.config(lsp, { -- nvim 0.11
        on_attach = nvchad_lsp.on_attach,
        on_init = nvchad_lsp.on_init,
        capabilities = nvchad_lsp.capabilities,
    })
end
