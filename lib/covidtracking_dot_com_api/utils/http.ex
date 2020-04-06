defmodule CovidtrackingDotComApi.HTTP do
  def get(path, querystring) do
    Application.ensure_all_started(:inets)
    Application.ensure_all_started(:ssl)

    path =
      "https://covidtracking.com/api/#{path}?#{querystring}"
      |> String.to_charlist()

    {:ok, {{'HTTP/1.1', 200, 'OK'}, _headers, body}} = :httpc.request(:get, {path, []}, [], [])
    body
  end
end
