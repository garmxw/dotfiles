return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              staticcheck = false, -- I'd actually turn this back on
              analyses = {
                unusedresult = true,
              },
            },
          },
        },
      },
    },
  },
}
