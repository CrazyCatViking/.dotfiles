return {
  'mfussenegger/nvim-dap',
  keys = { "<leader>r", "<F5>" },
  dependencies = { "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio" },
  config = function()
    local dap = require('dap')
    local dap_utils = require('dap.utils')
    local dapui = require('dapui')

    dapui.setup({
      mappints = {
        edit = "i",
        remove = "dd",
      },
    })

    vim.keymap.set("n", "<F5>", dap.continue, {})
    vim.keymap.set("n", "<F10>", dap.step_over, {})
    vim.keymap.set("n", "<F11>", dap.step_into, {})
    vim.keymap.set("n", "<F12>", dap.step_out, {})
    vim.keymap.set("n", "<leader>r", dap.toggle_breakpoint, {})

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    local netcoredbg_path = vim.fn.exepath('netcoredbg')

    dap.adapters.dart = {
      type = "executable",
      command = "dart",
      -- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
      args = {"debug_adapter"}
    }
    dap.configurations.dart = {
      {
        type = "dart",
        request = "launch",
        name = "Launch Dart Program",
        -- The nvim-dap plugin populates this variable with the filename of the current buffer
        program = "${file}",
        -- The nvim-dap plugin populates this variable with the editor's current working directory
        cwd = "${workspaceFolder}",
        args = {"--help"}, -- Note for Dart apps this is args, for Flutter apps toolArgs
      },
    }

    dap.adapters.coreclr = {
      type = 'executable',
      command = netcoredbg_path,
      args = {'--interpreter=vscode'}
    }

    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "Launch",
        request = "launch",
        program = function()
          return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debut/', 'file')
        end,
      },
      {
        type = "coreclr",
        name = "Attach",
        request = "attach",
        processId = function()
          return dap_utils.pick_process({
            filter = function(proc)
              ---@diagnostic disable-next-line: return-type-mismatch
              return proc.name:match(".*/Debug/.*") and not proc.name:find("vstest.console.dll")
            end,
          })
        end,
      },
    }
  end,
}
