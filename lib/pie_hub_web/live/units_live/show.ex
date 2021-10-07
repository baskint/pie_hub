defmodule PieHubWeb.UnitsLive.Show do
  use PieHubWeb, :live_view

  alias PieHub.RaspiUnit

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:units, RaspiUnit.get_units!(id))}
  end

  defp page_title(:show), do: "Show Units"
  defp page_title(:edit), do: "Edit Units"
end
