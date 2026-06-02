return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        markdown = { "prettier" },
        -- if leptosfmt overrides rustfmt
        -- I will need this version: rust = { "leptosfmt", "rustfmt" }
        rust = { "leptosfmt" },
      },
      formatters = {
        leptosfmt = {
          command = "leptosfmt",
          args = { "--stdin" },
        },
      },
    },
  },
}
