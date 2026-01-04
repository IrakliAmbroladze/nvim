return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          settings = {
            typescript = {
              format = {
                enable = false, -- disable tsserver formatting (use prettier)
              },
            },
            javascript = {
              format = {
                enable = false,
              },
            },
          },
        },
        eslint = {},
      },
    },
  },
}
