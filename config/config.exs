import Config

config :logger, :console,
[
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]
]

config :phoenix, json_library: Jason
config :wine, Wine.Endpoint,
[
  http: [port: 4000],
  render_errors: [accepts: ~w(json html)],
  server: true
]