defmodule PhoenixFirstApp.PageController do
  use PhoenixFirstApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
