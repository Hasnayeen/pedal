# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pedal,
  ecto_repos: [Pedal.Repo]

# Configures the endpoint
config :pedal, PedalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "owrOlu9id7HghYBn6NtW4WSjJlG/Rz3tB7m3k1bHA9IkVTWQw9HpuoDct1ap0eWA",
  render_errors: [view: PedalWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pedal.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
