# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hari_kondabotlu,
  ecto_repos: [HariKondabotlu.Repo]

# Configures the endpoint
config :hari_kondabotlu, HariKondabotluWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aLtIPEvGMdvTcstBtZNSGkodAxZZDjaPcfRnjtuegp5vny62ZxQG44VdsChx/mmz",
  render_errors: [view: HariKondabotluWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: HariKondabotlu.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :extwitter, :oauth, [
     consumer_key: "${TWITTER_CONSUMER_KEY}",
     consumer_secret: "${TWITTER_CONSUMER_SECRET}",
     access_token: "${TWITTER_ACCESS_TOKEN}",
     access_token_secret: "${TWITTER_ACCESS_SECRET}"
]

config :hari_kondabotlu,
  date_client: HariKondabotlu.StandardDateClient

config :hari_kondabotlu,
  twitter_client: HariKondabotlu.ExTwitterClient

config :hari_kondabotlu, HariKondabotlu.Scheduler,
  jobs: [
    # Runs every day at 8:00am Eastern:
    {{:cron, "* 13 * * *"}, {HariKondabotlu.DailyReminder, :post, []}}
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
