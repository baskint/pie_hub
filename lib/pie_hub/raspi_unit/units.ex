defmodule PieHub.RaspiUnit.Units do
  use Ecto.Schema
  import Ecto.Changeset

  schema "units" do
    field :available_storage, :string
    field :ip_address1, :string
    field :ip_address2, :string
    field :last_check, :naive_datetime
    field :name, :string
    field :powered_on, :boolean, default: false
    field :total_storage, :string
    field :up_since, :naive_datetime
    field :used_storage, :string

    timestamps()
  end

  @doc false
  def changeset(units, attrs) do
    units
    |> cast(attrs, [:name, :available_storage, :up_since, :powered_on, :last_check, :ip_address1, :ip_address2, :total_storage, :used_storage])
    |> validate_required([:name, :available_storage, :up_since, :powered_on, :last_check, :ip_address1, :ip_address2, :total_storage, :used_storage])
  end
end
