return {
  {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  opts = {
    provider = "copilot",
    copilot = {
        model = "gpt-4.1",
        endpoint = "https://api.githubcopilot.com",
        allow_insecure = false,
        timeout = 10 * 60 * 1000,
        temperature = 0,
        max_completion_tokens = 1000000,
        reasoning_effort = "low",
    },
    vendors = {
        ["copilot/claude-3.5"] = {
          __inherited_from = "copilot",
          model = "claude-3.5-sonnet",
          display_name = "copilot/claude-3.5",
          max_tokens = 65536,
        },
        ["copilot/claude-3.7"] = {
          __inherited_from = "copilot",
          model = "claude-3.7",
          display_name = "copilot/claude-3.7",
          max_tokens = 65536,
        },
        ["copilot/claude-3.7-thought"] = {
          __inherited_from = "copilot",
          model = "claude-3.7-sonnet-thought",
          display_name = "copilot/claude-3.7-thought",
          max_tokens = 65536,
        },
        ["copilot/o4-mini"] = {
          __inherited_from = "copilot",
          model = "o4-mini",
          display_name = "copilot/o4-mini",
          max_tokens = 100000,
        },
        ["copilot/gpt-4.1"] = {
          __inherited_from = "copilot",
          model = "gpt-4.1",
          display_name = "copilot/gpt-4.1",
          max_tokens = 32768,
        },
        ["copilot/gemini-2.0"] = {
          __inherited_from = "copilot",
          model = "gemini-2.0-flash-001",
          display_name = "copilot/gemini-2.0-flash",
          max_tokens = 8192,
        },
        ["copilot/gemini-2.5"] = {
          __inherited_from = "copilot",
          model = "gemini-2.5-pro",
          display_name = "copilot/gemini-2.5-pro",
          max_tokens = 65536,
        },
      }
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "github/copilot.vim", -- for copilot provider
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
}
