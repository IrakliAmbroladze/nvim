return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",

        ["<CR>"] = false,

        ["<Tab>"] = {
          "accept",
          "fallback",
        },

        ["<S-Tab>"] = {
          "select_prev",
          "fallback",
        },
      },
    },
  },
}
