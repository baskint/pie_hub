defmodule PieHubWeb.UnitsLive.Index do
  use PieHubWeb, :live_view

  alias PieHub.RaspiUnit
  alias PieHub.RaspiUnit.Units

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :units_collection, list_units())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"name" => name}) do
    socket
    |> assign(:page_title, "Edit Units")
    |> assign(:units, RaspiUnit.get_units!(name))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Units")
    |> assign(:units, %Units{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Units")
    |> assign(:units, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => name}, socket) do
    units = RaspiUnit.get_units!(name)
    {:ok, _} = RaspiUnit.delete_units(units)

    {:noreply, assign(socket, :units_collection, list_units())}
  end

  defp list_units do
    RaspiUnit.list_units()
  end
end
