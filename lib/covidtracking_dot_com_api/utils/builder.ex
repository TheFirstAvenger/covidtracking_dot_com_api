defmodule CovidtrackingDotComApi.Utils.Builder do
  alias CovidtrackingDotComApi.HTTP

  @date_fields [:lastModified, :dateChecked, :dateModified]

  def single(module, path, query_string \\ []) do
    vals =
      path
      |> HTTP.get(query_string)
      |> Jason.decode!()
      |> case do
        [x] -> x
        x when is_map(x) -> x
      end
      |> Enum.filter(&existing_key/1)
      |> Enum.map(&atomify_key/1)
      |> Enum.map(&to_dates/1)

    struct(module, vals)
  end

  def existing_key({key, _}) do
    try do
      String.to_existing_atom(key)
      true
    rescue
      _ -> false
    end
  end

  def atomify_key({key, value}), do: {String.to_existing_atom(key), value}

  def to_dates({key, value}) when key in @date_fields do
    {:ok, date, 0} = DateTime.from_iso8601(value)
    {key, date}
  end

  def to_dates(other), do: other
end
