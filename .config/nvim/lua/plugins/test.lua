return {
  { "alexandervanhecke/neotest-scala" },
  --{ dir = "/home/alexander/github/neotest-scala" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "alexandervanhecke/neotest-scala",
      --{ dir = "/home/alexander/github/neotest-scala" },
    },
    opts = function()
      return {
        adapters = {
          require("neotest-scala")({
            runner = "bloop", -- or "sbt" or "bloop" or "mill"
            framework = "scalatest", -- or "munit", "utest"
            bloop_project = function(path)
              if path and path:match("/modules/integration/") then
                return "integration"
              end
              return "thor-test"
            end,
          }),
        },
        log_level = vim.log.levels.INFO,
      }
    end,
  },
}
