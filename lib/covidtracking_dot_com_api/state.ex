defmodule CovidtrackingDotComApi.State do
  @moduledoc """
  Total numbers for individual states:

  ## Examples

      iex> CovidtrackingDotComApi.State.get("MA")
      %CovidtrackingDotComApi.State{
        commercialScore: 1,
        date: nil,
        dateChecked: ~U[2020-04-06 14:07:00Z],
        dateModified: ~U[2020-04-05 16:30:00Z],
        death: 231,
        grade: "B",
        hash: "7e8fbde232c0f23227eaf7a66dd555ee57e9f05c",
        hospitalizedCumulative: 1145,
        hospitalizedCurrently: nil,
        inIcuCumulative: nil,
        inIcuCurrently: nil,
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
      iex> CovidtrackingDotComApi.State.get_daily("MA")
      [
        %CovidtrackingDotComApi.State{
          commercialScore: -1,
          date: ~D[2020-04-05],
          dateChecked: ~U[2020-04-05 20:00:00Z],
          dateModified: nil,
          death: 231,
          grade: nil,
          hash: "d25b1917417ab57d0ef9e85c85c1a5cca2cc7e36",
          hospitalizedCumulative: 1145,
          hospitalizedCurrently: nil,
          inIcuCumulative: nil,
          inIcuCurrently: nil,
          negative: 59437,
          negativeRegularScore: -1,
          negativeScore: -1,
          notes: nil,
          onVentilatorCumulative: nil,
          onVentilatorCurrently: nil,
          positive: 12500,
          positiveScore: -1,
          score: -1,
          state: "MA",
          totalTestResults: 71937
        },
        %CovidtrackingDotComApi.State{
          commercialScore: -1,
          date: ~D[2020-04-04],
          dateChecked: ~U[2020-04-04 20:00:00Z],
          dateModified: nil,
          death: 216,
          grade: nil,
          hash: "9a85464df1b687aed82070c167ec82e4e12d66cc",
          hospitalizedCumulative: 1068,
          hospitalizedCurrently: nil,
          inIcuCumulative: nil,
          inIcuCurrently: nil,
          negative: 57064,
          negativeRegularScore: -1,
          negativeScore: -1,
          notes: nil,
          onVentilatorCumulative: nil,
          onVentilatorCurrently: nil,
          positive: 11736,
          positiveScore: -1,
          score: -1,
          state: "MA",
          totalTestResults: 68800
        },...
      ]

  """
  alias CovidtrackingDotComApi.Utils.Builder

  @states [
    "AL",
    "AK",
    "AZ",
    "AR",
    "CA",
    "CO",
    "CT",
    "DE",
    "DC",
    "FL",
    "GA",
    "HI",
    "ID",
    "IL",
    "IN",
    "IA",
    "KS",
    "KY",
    "LA",
    "ME",
    "MD",
    "MA",
    "MI",
    "MN",
    "MS",
    "MO",
    "MT",
    "NE",
    "NV",
    "NH",
    "NJ",
    "NM",
    "NY",
    "NC",
    "ND",
    "OH",
    "OK",
    "OR",
    "PA",
    "RI",
    "SC",
    "SD",
    "TN",
    "TX",
    "UT",
    "VT",
    "VA",
    "WA",
    "WV",
    "WI",
    "WY"
  ]
  defstruct state: nil,
            positive: -1,
            negative: -1,
            totalTestResults: -1,
            hospitalizedCumulative: -1,
            hospitalizedCurrently: -1,
            inIcuCurrently: -1,
            inIcuCumulative: -1,
            onVentilatorCurrently: -1,
            onVentilatorCumulative: -1,
            commercialScore: -1,
            dateChecked: nil,
            dateModified: nil,
            grade: nil,
            negativeRegularScore: -1,
            negativeScore: -1,
            positiveScore: -1,
            score: -1,
            death: -1,
            date: nil,
            hash: nil,
            notes: nil

  def get(state) when state in @states do
    Builder.single(__MODULE__, "states", "state=#{state}")
  end

  def get_daily(state) when state in @states do
    Builder.multiple(__MODULE__, "states/daily", "state=#{state}")
  end
end
