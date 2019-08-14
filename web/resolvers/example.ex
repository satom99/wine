defmodule Wine.Resolver.Example do
    alias Absinthe.Relay.Connection
    alias Wine.Model.Example

    @examples [
        %Example{
            id: 1,
            name: "Hello"
        },
        %Example{
            id: 2,
            name: "Bye"
        }
    ]

    def connect(params, _resolution) do
        connection = Connection.from_list(@examples, params)
        IO.inspect {:connect, params, connection}
        connection
    end

    def fetch(params, _resolution) do
        example = List.first(@examples)
        IO.inspect {:fetch, params, example}
        {:ok, example}
    end
end