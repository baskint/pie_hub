defmodule PieHubWeb.LiveHelpers do
  import Phoenix.LiveView.Helpers

  @doc """
  Renders a component inside the `PieHubWeb.ModalComponent` component.

  The rendered modal receives a `:return_to` option to properly update
  the URL when the modal is closed.

  ## Examples

      <%= live_modal PieHubWeb.UnitsLive.FormComponent,
        id: @units.id || :new,
        action: @live_action,
        units: @units,
        return_to: Routes.units_index_path(@socket, :index) %>
  """
  def live_modal(component, opts) do
    path = Keyword.fetch!(opts, :return_to)
    modal_opts = [id: :modal, return_to: path, component: component, opts: opts]
    live_component(PieHubWeb.ModalComponent, modal_opts)
  end
end
