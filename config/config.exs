# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :hermes,
  ecto_repos: [Hermes.Repo]

# Configures the endpoint
config :hermes, HermesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ppe0rs1amBf1DlM+VsocgGkpQMc2CB1rhThQ8CbaX3U8xlH6iz/80QfIv9E5L4VL",
  render_errors: [view: HermesWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hermes.PubSub,
  live_view: [signing_salt: "VBiDf2ct"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
