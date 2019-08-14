defmodule Wine do
	use Application

	alias Wine.Endpoint

	def start(_type, _args) do
		children = [
			Endpoint
		]
		options = [
			strategy: :one_for_one,
			name: __MODULE__
		]
		Supervisor.start_link(children, options)
	end
end