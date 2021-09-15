# Stores application-level configuration.

import Config

config :issues,
  github_url: "https://api.github.com"

config :logger,
  compile_time_purge_matching: [
    [application: :issues, level_lower_than: :info]
    # [module: Bar, function: "foo/3"]
  ]

# Elixir will read dev.exs, test.exs, or prod.exs, depending 
# on your environment. You can override the default config file 
# name (config/config.exs) using the --config option to elixir.
import_config "#{config_env()}.exs"
