import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :pbv, Pbv.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "pbv_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :pbv, PbvWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "oOLDzNo6UxQVw665VDvM22ha5K0V4FQOQy9BZPHL0iBzeRXRM4rkshiyCvyPWc8S",
  server: false

# In test we don't send emails.
config :pbv, Pbv.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
