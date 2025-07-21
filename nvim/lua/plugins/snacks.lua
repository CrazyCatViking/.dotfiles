return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    explorer = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
  },
  keys = {
    { "<leader>pf", function() Snacks.picker.smart() end, desc = "Find Files" },
    { "<leader>ps", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>b", function() Snacks.picker.explorer() end, desc = "Explorer" },
    { "<leader>gf", function() Snacks.picker.git_files() end, desc = "Git Files" },
    { "<leader>gs", function() Snacks.picker.git_grep() end, desc = "Git Grep" },
    { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
    { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff" },
  }
}
