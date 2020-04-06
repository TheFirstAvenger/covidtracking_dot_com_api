# CovidtrackingDotComApi

Simple wrapper for the [covidtracking.com API](https://covidtracking.com/api).

## Usage

```elixir
iex(1)> CovidtrackingDotComApi.US.get()
%CovidtrackingDotComApi.US{
  death: 9586,
  hash: "50a213376ea022dc971ff6c9b2a72ad9e8ad040f",
  hospitalizedCumulative: 41757,
  hospitalizedCurrently: 27069,
  inIcuCumulative: 922,
  inIcuCurrently: 5497,
  lastModified: ~U[2020-04-06 19:05:04.175Z],
  negative: 1450919,
  notes: "NOTE: \"total\", \"posNeg\", \"hospitalized\" will be removed in the future.",
  onVentilatorCumulative: 193,
  onVentilatorCurrently: 1812,
  positive: 334487,
  totalTestResults: 1785406
}
iex(2)> CovidtrackingDotComApi.State.get("MA")
%CovidtrackingDotComApi.State{
  commercialScore: 1,
  dateChecked: ~U[2020-04-06 14:07:00Z],
  dateModified: ~U[2020-04-05 16:30:00Z],
  death: 231,
  grade: "B",
  hash: "7e8fbde232c0f23227eaf7a66dd555ee57e9f05c",
  hospitalizedCumulative: 1145,
  hospitalizedCurrently: nil,
  inIcuCumulative: nil,
  inIcuCurrently: nil,
  lastModified: nil,
  negative: 59437,
  negativeRegularScore: 0,
  negativeScore: 1,
  notes: "Please stop using the \"total\" field. Use \"totalTestResults\" instead.",
  onVentilatorCumulative: nil,
  onVentilatorCurrently: nil,
  positive: 12500,
  positiveScore: 1,
  score: 3,
  state: "MA",
  totalTestResults: 71937
}
```

## Installation

The package can be installed
by adding `covidtracking_dot_com_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:covidtracking_dot_com_api, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/covidtracking_dot_com_api](https://hexdocs.pm/covidtracking_dot_com_api).
