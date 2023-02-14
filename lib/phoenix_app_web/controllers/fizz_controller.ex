defmodule PhoenixAppWeb.FizzController do
  use PhoenixAppWeb, :controller

  def index(conn, _params) do
    fizz = Enum.filter(1..100, &(fizz?(&1)))
    render conn, "index.html", fizz: fizz
  end

  defp fizz?(n), do: n % 3 == 0
end
