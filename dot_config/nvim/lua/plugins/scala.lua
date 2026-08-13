return {
  {
    "scalameta/nvim-metals",
    opts = function(_, metals_config)
      metals_config.settings.bloopJvmProperties = { "-Xmx6g", "-Xss4m" }
      metals_config.settings.serverProperties = { "-Xmx4g" }
      return metals_config
    end,
  },
}

