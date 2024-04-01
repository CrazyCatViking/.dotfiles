return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

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
        'templ'
      },
      sync_install = false,
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
