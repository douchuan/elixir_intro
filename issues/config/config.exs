import Config

config :issues,
  github_url: "https://api.github.com"

config :logger,
  compile_time_purge_matching: [
    [application: :issues, level_lower_than: :info]
    # [module: Bar, function: "foo/3"]
  ]

import_config "#{config_env()}.exs"
