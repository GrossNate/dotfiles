return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff_lsp = {
          settings = {
            ruff_lsp = {
              settings = {
                lineLength = 80,
              },
            },
          },
        },
      },
    },
  },
}
