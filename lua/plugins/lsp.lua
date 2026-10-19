return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          enabled = false, -- This prevents LazyVim from setting it up entirely
        },
      },
    },
  },
}
