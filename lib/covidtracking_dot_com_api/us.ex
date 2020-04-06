defmodule CovidtrackingDotComApi.US do
  @moduledoc """
  Total numbers for the United States:

  ## Examples

      iex> CovidtrackingDotComApi.US.get()
      %CovidtrackingDotComApi.US{
        death: 9586,
        hash: "50a213376ea022dc971ff6c9b2a72ad9e8ad040f",
        hospitalizedCumulative: 41757,
        hospitalizedCurrently: 27069,
        inIcuCumulative: 922,
        inIcuCurrently: 5497,
        lastModified: ~U[2020-04-06 20:05:19.234Z],
        negative: 1450919,
        notes: "NOTE: \"total\", \"posNeg\", \"hospitalized\" will be removed in the future.",
        onVentilatorCumulative: 193,
        onVentilatorCurrently: 1812,
        positive: 334487,
        totalTestResults: 1785406
      }

      iex(6)> CovidtrackingDotComApi.US.get_daily()
      [
        %CovidtrackingDotComApi.US{
          death: 9498,
          hash: "a5f1f58fe74620c89cde687c8beae82629c8b1e0",
          hospitalizedCumulative: 41372,
          hospitalizedCurrently: 23061,
          inIcuCumulative: 913,
          inIcuCurrently: 5497,
          lastModified: nil,
          negative: 1429724,
          notes: nil,
          onVentilatorCumulative: 193,
          onVentilatorCurrently: 612,
          positive: 332308,
          totalTestResults: 1762032
        },
        %CovidtrackingDotComApi.US{
          death: 8314,
          hash: "767639d13287efa1c97cfbd3bad25cf86f3abe3f",
          hospitalizedCumulative: 38402,
          hospitalizedCurrently: 22158,
          inIcuCumulative: 691,
          inIcuCurrently: 5207,
          lastModified: nil,
          negative: 1318052,
          notes: nil,
          onVentilatorCumulative: 154,
          onVentilatorCurrently: 656,
          positive: 305755,
          totalTestResults: 1623807
        }, ...
      ]

  """
  alias CovidtrackingDotComApi.Utils.Builder

  defstruct positive: -1,
            negative: -1,
            totalTestResults: -1,
            hospitalizedCumulative: -1,
            hospitalizedCurrently: -1,
            inIcuCurrently: -1,
            inIcuCumulative: -1,
            onVentilatorCurrently: -1,
            onVentilatorCumulative: -1,
            death: -1,
            notes: nil,
            hash: nil,
            date: nil,
            lastModified: nil

  def get do
    Builder.single(__MODULE__, "us")
  end

  def get_daily do
    Builder.multiple(__MODULE__, "us/daily")
  end
end
