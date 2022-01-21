# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :be_exercise,
  namespace: Exercise,
  ecto_repos: [Exercise.Repo]

# Configures the endpoint
config :be_exercise, ExerciseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wG3WLZfO++KoEKqZz4hCFJ29ySZQtNY603/QJZUAyDCyklGbsvvsJx2VmeDFxg9D",
  render_errors: [view: ExerciseWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Exercise.PubSub,
  live_view: [signing_salt: "Rv+E6O3S"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
