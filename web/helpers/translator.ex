defmodule Wine.Translator do
    @behaviour Absinthe.Relay.Node.IDTranslator

    alias Absinthe.Relay.Node.IDTranslator.Base64

    def from_global_id(global, schema) do
        return = Base64.from_global_id(global, schema)
        IO.inspect {:from_global, global, return}
        return
    end

    def to_global_id(type, source, schema) do
        return = Base64.to_global_id(type, source, schema)
        IO.inspect {:to_global, type, source, return}
        return
    end
end