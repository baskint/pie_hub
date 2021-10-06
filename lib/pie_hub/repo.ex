defmodule PieHub.Repo do
  use Ecto.Repo,
    otp_app: :pie_hub,
    adapter: Ecto.Adapters.Postgres
end
