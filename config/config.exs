# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :book_store,
  ecto_repos: [BookStore.Repo]

# Configures the endpoint
config :book_store, BookStoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MYtiKtkEf3wxj+OMbsfTKZd6Rx+n1jV6pafb9HQ77JG/Z8FtenXVcPYfgv6BZ7q0",
  render_errors: [view: BookStoreWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BookStore.PubSub,
  live_view: [signing_salt: "ZCviGGKv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
