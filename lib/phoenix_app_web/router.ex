

#nova rota ! teste
defmodule PhoenixAppWeb.Router do
  use PhoenixAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", TestDwvWeb do
    get "/fizz_buzz", FizzBuzzController, :index
    get "/fizz", FizzController, :index
    get "/buzz", BuzzController, :index
    get "/other", OtherController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", MyApp do
  #   pipe_through :api
  # end
end
