require IEx
defmodule PhoenixFirstApp.TextController do
  use PhoenixFirstApp.Web, :controller

  alias PhoenixFirstApp.Text
  import AlchemicAvatar

  def show(conn, %{"text" => text}) do
    chars = Enum.drop String.split(text, ""), -1
    images = Enum.map chars, fn(x) -> AlchemicAvatar.generate x, 200 end
    render(conn, "show.html", images: images)
  end
end
