defmodule PieHubWeb.UnitsLive.FormComponent do
  use PieHubWeb, :live_component

  alias PieHub.RaspiUnit

  @impl true
  def update(%{units: units} = assigns, socket) do
    changeset = RaspiUnit.change_units(units)

    {:ok,
     socket
     |> assign(assigns)
     |> assign(:changeset, changeset)}
  end

  @impl true
  def handle_event("validate", %{"units" => units_params}, socket) do
    changeset =
      socket.assigns.units
      |> RaspiUnit.change_units(units_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, :changeset, changeset)}
  end

  def handle_event("save", %{"units" => units_params}, socket) do
    save_units(socket, socket.assigns.action, units_params)
  end

  defp save_units(socket, :edit, units_params) do
    case RaspiUnit.update_units(socket.assigns.units, units_params) do
      {:ok, _units} ->
        {:noreply,
         socket
         |> put_flash(:info, "Units updated successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, :changeset, changeset)}
    end
  end

  defp save_units(socket, :new, units_params) do
    case RaspiUnit.create_units(units_params) do
      {:ok, _units} ->
        {:noreply,
         socket
         |> put_flash(:info, "Units created successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
