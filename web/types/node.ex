defmodule Wine.Type.Node do
    use Absinthe.Schema.Notation
    use Absinthe.Relay.Schema.Notation, :modern

    node interface do
        resolve_type fn
            %model{}, _execution ->
                model
                |> Module.split
                |> List.last
                |> String.downcase
                |> String.to_atom
            _other, _execution ->
                nil
        end
    end
end