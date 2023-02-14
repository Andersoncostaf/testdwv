defmodule PhoenixAppWeb.OtherController do
  use PhoenixAppWeb, :controller

  def index(conn, _params) do
    other = Enum.PhoenixAppWebfilter(1..100, &(other?(&1)))
    render conn, "index.html", other: other
  end

  defp other?(n), do: n % 3 != 0 && n % 5 != 0
end
