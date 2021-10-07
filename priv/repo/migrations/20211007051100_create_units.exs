defmodule PieHub.Repo.Migrations.CreateUnits do
  use Ecto.Migration

  def change do
    create table(:units) do
      add :name, :string
      add :available_storage, :string
      add :up_since, :naive_datetime
      add :powered_on, :boolean, default: false, null: false
      add :last_check, :naive_datetime
      add :ip_address1, :string
      add :ip_address2, :string
      add :total_storage, :string
      add :used_storage, :string

      timestamps()
    end
  end
end
