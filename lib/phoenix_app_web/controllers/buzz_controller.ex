defmodule PhoenixAppWeb.BuzzController do
  use PhoenixAppWeb, :controller

  def index(conn, _params) do
    buzz = Enum.filter(1..100, &(buzz?(&1)))
    render conn, "index.html", buzz: buzz
  end

  defp buzz?(n), do: n % 5 == 0
end
