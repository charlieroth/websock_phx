defmodule WebsockPhxWeb.WebsocketController do
  use WebsockPhxWeb, :controller

  def websocket(conn, params) do
    WebSockAdapter.upgrade(conn, WebsockPhx.SimplePubSubClient, params, timeout: 60_000)
  end
end
