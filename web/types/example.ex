defmodule Wine.Type.Example do
    use Absinthe.Schema.Notation
    use Absinthe.Relay.Schema.Notation, :modern

    alias Wine.Resolver.Example

    node object :example do
        field :name, :string
    end
    connection node_type: :example

    object :example_queries do
        node field :example, node_type: :example do
            resolve &Example.fetch/2
        end
        connection field :examples, node_type: :example do
            resolve &Example.connect/2
        end
    end
end