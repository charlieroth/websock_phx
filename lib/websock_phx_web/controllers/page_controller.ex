defmodule WebsockPhxWeb.PageController do
  use WebsockPhxWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end
end
