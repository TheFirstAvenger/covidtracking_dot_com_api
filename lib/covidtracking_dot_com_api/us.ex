defmodule CovidtrackingDotComApi.US do
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
            lastModified: nil

  def get do
    Builder.single(__MODULE__, "us")
  end
end
