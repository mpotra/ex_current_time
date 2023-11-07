defmodule CurrentDateTime.MixProject do
  use Mix.Project

  @source_url "https://github.com/mpotra/ex_current_time"
  @version "0.1.0"

  def project do
    [
      app: :current_time,
      version: @version,
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Hex
      description: "Utility protocols for DateTime, Date and Time in Elixir",
      package: package(),

      # Docs
      name: "CurrentTime",
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev]},
      {:dialyxir, "~> 1.4", only: [:dev]},
      {:ex_doc, "~> 0.30", only: :docs}
    ]
  end

  defp package do
    [
      maintainers: ["Mihai Potra"],
      licenses: ["MIT"],
      links: %{
        Changelog: "#{@source_url}/blob/master/CHANGELOG.md",
        GitHub: @source_url
      },
      files: ~w(lib mix.exs README.md CHANGELOG.md LICENSE)
    ]
  end

  defp docs do
    [
      main: "CurrentTime",
      source_ref: "v#{@version}",
      source_url: @source_url,
      skip_undefined_reference_warnings_on: ["CHANGELOG.md"],
      extras: ["CHANGELOG.md"]
    ]
  end
end
