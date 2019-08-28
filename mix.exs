defmodule Wine.MixProject do
	use Mix.Project
  
	def project do
	  [
		app: :wine,
		version: "0.1.0",
		elixir: "~> 1.9",
		start_permanent: Mix.env == :prod,
		compilers: [:phoenix | Mix.compilers],
		elixirc_paths: ["lib", "web"],
		deps: deps()
	  ]
	end
  
	def application do
	  [
		mod: {Wine, []}
	  ]
	end
  
	defp deps do
	  [
		{:jason, "~> 1.1"},
		{:phoenix, "~> 1.4"},
		{:plug_cowboy, "~> 2.1"},
		{:phoenix_html, "~> 2.13"},
		{:ecto, "~> 3.1"},
		{:absinthe, "~> 1.5.0-beta.0"},
		{:absinthe_plug, "~> 1.5.0-alpha.0"},
		{:absinthe_relay, "~> 1.5.0-beta.0"}
	  ]
	end
  end
