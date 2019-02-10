defmodule PedalWeb.PageController do
  use PedalWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
