import Config

config :helpdesk, Helpdesk.Repo,
  username: "postgres",
  password: "example",
  hostname: "localhost",
  database: "postgres",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
