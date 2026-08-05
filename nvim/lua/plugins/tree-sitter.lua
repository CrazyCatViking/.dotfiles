return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  init = function()
    vim.api.nvim_create_autocmd('FileType', { 
      callback = function() 
        -- Enable treesitter highlighting and disable regex syntax
        pcall(vim.treesitter.start) 
        -- Enable treesitter-based indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" 
      end, 
    }) 
  end,
  config = function () 
    local configs = require("nvim-treesitter")

    configs.setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "elixir",
        "heex",
        "javascript",
        "typescript",
        "vue",
        "scss",
        "html",
        "graphql",
        'rust',
        'go',
        'templ',
        'c_sharp'
      },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true }, 
    })

    vim.filetype.add({
      extension = {
        templ = "templ",
      },
    })
  end
}
