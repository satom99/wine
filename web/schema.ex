defmodule Wine.Schema do
    use Absinthe.Schema
    use Absinthe.Relay.Schema,
    [
        flavor: :modern,
        global_id_translator: Wine.Translator
    ]

    alias Wine.Type

    import_types Type.Node
    import_types Type.Example

    query do
        import_fields :example_queries
    end
end