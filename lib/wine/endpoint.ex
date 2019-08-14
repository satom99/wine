defmodule Wine.Endpoint do
    @moduledoc false

    use Phoenix.Endpoint, otp_app: :wine

    plug Plug.Logger
    plug Plug.RequestId
    plug Plug.Parsers,
    [
        parsers: [:json, :multipart, :urlencoded],
        json_decoder: Jason
    ]
    plug Wine.Router
end