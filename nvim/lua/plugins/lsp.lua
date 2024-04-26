return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
    }
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        sources = {
          { name = "luasnip" },
          { name = "nvim_lsp" },
          { name = "buffer", option = { keyword_pattern = [[\k\+]] } },
          { name = "path" },
        },
        select = {
          behavior = cmp.SelectBehavior.Insert,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-.>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
      })
    end
  },
  {
    'williamboman/mason.nvim',
    config = function()
      local mason = require("mason")
      mason.setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      local lspconfig = require("mason-lspconfig")

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf, remap = false }

          vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
          vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
          vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
          vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
          vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
          vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
          vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
          vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
          vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
          vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        end,
      })

      lspconfig.setup({
        ensure_installed = {
          'tsserver',
          'eslint',
          'lua_ls',
          'volar',
          'graphql',
          'rust_analyzer',
        },
        handlers = {
          function(server_name)
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

            if (server_name == 'volar') then
              require('lspconfig')[server_name].setup({
                init_options = {
                  vue = {
                    hybridMode = false
                  },
                },
                capabilities = capabilities,
              })
            else
              require('lspconfig')[server_name].setup({
                capabilities = capabilities,
              })
            end
          end
        },
      })
    end
  },
}
