defmodule PhoenixAppWeb.FizzBuzzView do
  use PhoenixAppWeb, :view

  def render("index.html", %{numbers: numbers}) do
    ~L"""
    <ul>
    <%= for number <- numbers do %>
      <li><%= number %></li>
    <% end %>
    </ul>
    """
  end
end
