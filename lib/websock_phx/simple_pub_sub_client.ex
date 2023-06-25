defmodule WebsockPhx.SimplePubSubClient do
  def init(args) do
    Phoenix.PubSub.subscribe(WebsockPhx.PubSub, args["name"])
    {:ok, args}
  end

  def handle_info(msg, state) do
    {:push, {:text, msg}, state}
  end

  def terminate(_reason, _state) do
    :ok
  end
end
