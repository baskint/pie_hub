defmodule PieHub.Repo.Migrations.AddUnitsTable do
  use Ecto.Migration

  def up do
    create table(:units) do
      add :name, :string, null: false
      add :model_type, :string
      add :available_storage, :string
      add :up_since, :utc_datetime
      add :powered_on, :boolean, default: false, null: false
      add :last_check, :utc_datetime
      add :ip_address1, :string, null: false
      add :ip_address2, :string
      add :total_storage, :string
      add :used_storage, :string
      add :description, :string

      timestamps()
    end

    create unique_index(:units, [:name])
  end

  def down do
    drop table(:units)
  end
end
