defmodule Wine.Router do
    use Phoenix.Router

    alias Absinthe.Plug
    alias Wine.Schema

    pipeline :api do
        plug :accepts, ["json"]
    end

    scope "/" do
        pipe_through :api

        forward "/graphql", Plug, schema: Schema
        forward "/graphiql", Plug.GraphiQL, schema: Schema
    end
end