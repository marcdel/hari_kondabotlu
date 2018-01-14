use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hari_kondabotlu, HariKondabotluWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :hari_kondabotlu, HariKondabotlu.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "hari_kondabotlu_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :hari_kondabotlu,
  date_client: HariKondabotlu.DateClientMock

config :hari_kondabotlu,
  twitter_client: HariKondabotlu.TwitterClientMock
