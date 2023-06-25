defmodule WebsockPhx.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      WebsockPhxWeb.Telemetry,
      {Phoenix.PubSub, name: WebsockPhx.PubSub},
      {Finch, name: WebsockPhx.Finch},
      WebsockPhxWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: WebsockPhx.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    WebsockPhxWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
