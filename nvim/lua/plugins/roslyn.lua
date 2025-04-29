return {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {
      ignore_target = function(sln)
        return string.match(sln, "SmartDok.sln") ~= nil
      end,
    }
}
