import Config

config :websock_phx, WebsockPhxWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [html: WebsockPhxWeb.ErrorHTML, json: WebsockPhxWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: WebsockPhx.PubSub,
  adapter: Bandit.PhoenixAdapter,
  live_view: [signing_salt: "fGUX8EJd"]

config :websock_phx, WebsockPhx.Mailer, adapter: Swoosh.Adapters.Local

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
