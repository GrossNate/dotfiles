return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ruff = {
          prepend_args = { "--line-length", "80" },
        },
      },
    },
  },
}
