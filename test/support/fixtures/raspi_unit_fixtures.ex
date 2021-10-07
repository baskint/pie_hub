defmodule PieHub.RaspiUnitFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PieHub.RaspiUnit` context.
  """

  @doc """
  Generate a units.
  """
  def units_fixture(attrs \\ %{}) do
    {:ok, units} =
      attrs
      |> Enum.into(%{
        available_storage: "some available_storage",
        ip_address1: "some ip_address1",
        ip_address2: "some ip_address2",
        last_check: ~N[2021-10-06 05:11:00],
        name: "some name",
        powered_on: true,
        total_storage: "some total_storage",
        up_since: ~N[2021-10-06 05:11:00],
        used_storage: "some used_storage"
      })
      |> PieHub.RaspiUnit.create_units()

    units
  end
end
