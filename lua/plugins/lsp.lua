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
        -- The standard CSS/SCSS server
        cssls = {},
        -- The one that helps with cross-file completions/extends
        cssmodules_ls = {},
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              diagnostics = {
                disabled = { "inactive-code" }, -- ← disables the warning
              },
              -- Optional: always enable certain features (like "ssr")
              cargo = {
                features = "all",
              },
              procMacro = {
                ignored = {
                  leptos_macro = {
                    -- optional: --
                    -- "component",
                    "server",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}
