print("[LSP] Loading lua_ls config")

local lua_ls_path = vim.fn.expand("~/.nix-profile/bin/lua-language-server")

return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup({
        -- Use Home Manager-installed lua-language-server
        cmd = { lua_ls_path },

        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- Recognize `vim` global in config
            },
            workspace = {
              checkThirdParty = false, -- optional, silence some warnings
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })
    end,
  },
}

