# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :devmatch_elixir,
  ecto_repos: [DevmatchElixir.Repo]

# Configures the endpoint
config :devmatch_elixir, DevmatchElixir.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gGzsYmDNOC2Y3hmO9QeaLnuHNcx2MPA8vxQ1X5nmrcT1zRC3ll4kcJicv/hhnRFL",
  render_errors: [view: DevmatchElixir.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DevmatchElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
