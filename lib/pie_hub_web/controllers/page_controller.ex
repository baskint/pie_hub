defmodule PieHubWeb.PageController do
  use PieHubWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
