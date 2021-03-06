# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :backend,
  ecto_repos: [Backend.Repo]

# Configures the endpoint
config :backend, Backend.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "f+j2YrgnJ8owsmFa679WRd4dkWHQoGw04v5p/9B4u1T/cFl+E1ALHyOAkUw2MJ3N",
  render_errors: [view: Backend.ErrorView, accepts: ~w(json)],
  pubsub: [name: Backend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  issuer: "Backend",
  ttl: { 3, :days},
  verify_issuer: true,
  # secret_key: "KNkRLwR1qPVSgt4m/bgB6B7pJHAluARi6usiQ5JjkivCUJTxsEzuf2gxH9BQp+mT",
  serializer: Backend.GuardianSerializer
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
