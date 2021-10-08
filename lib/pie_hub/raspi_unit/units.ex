defmodule PieHub.RaspiUnit.Units do
  use Ecto.Schema
  import Ecto.Changeset

  schema "units" do
    field :available_storage, :string
    field :ip_address1, :string
    field :ip_address2, :string
    field :last_check, :utc_datetime
    field :name, :string
    field :model_type, :string
    field :powered_on, :boolean, default: false
    field :total_storage, :string
    field :up_since, :utc_datetime
    field :used_storage, :string
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(units, attrs) do
    units
    |> cast(attrs, [:name, :model_type, :available_storage, :up_since, :powered_on, :last_check, :ip_address1, :ip_address2, :total_storage, :used_storage, :description])
    |> validate_required([:name, :available_storage, :powered_on, :last_check, :ip_address1, :ip_address2, :total_storage, :used_storage])
  end
end
