defmodule PhoenixAppWeb.FizzBuzzController do
  use PhoenixAppWeb, :controller

  def index(conn, _params) do
    fizz_buzz = Enum.filter(1..100, &(fizzbuzz?(&1)))
    render conn, "index.html", fizz_buzz: fizz_buzz
  end

  defp fizzbuzz?(n), do: n % 3 == 0 && n % 5 == 0
end
