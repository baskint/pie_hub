defmodule PieHub.Repo.Migrations.CreateUnits do
  use Ecto.Migration

  def change do
    create table(:units, primary_key: false) do
      add :name, :string, primary_key: true
      add :model_type, :string
      add :available_storage, :string
      add :up_since, :utc_datetime
      add :powered_on, :boolean, default: false, null: false
      add :last_check, :utc_datetime
      add :ip_address1, :string
      add :ip_address2, :string
      add :total_storage, :string
      add :used_storage, :string
      add :description, :string

      timestamps()
    end
  end
end
