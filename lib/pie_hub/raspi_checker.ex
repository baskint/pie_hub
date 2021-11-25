defmodule PieHub.RaspiChecker do
  use GenServer
  import Ecto.Query, only: [from: 2]
  alias PieHub.Hood
  alias PieHub.Repo
  alias PieHub.RaspiUnit.Units

  def start_link(default) when is_list(default) do
    GenServer.start_link(__MODULE__, default)
  end

  @impl true
  def init(state) do
    # update every 5 seconds
    :timer.send_interval(10_000, :work)
    {:ok, state}
  end

  @impl true
  def handle_info(:work, state) do
    do_recurrent_thing(state)
    {:noreply, state}
  end

  defp do_recurrent_thing(state) do
    IO.puts "checking raspis: #{state}"
    get_all_ip_addresses(state)
    # {:ok, pid}= Hood.start
    # Hood.send_message(pid, "uptime")
    # Hood.disconnect("state_", "till next time...")
  end

  defp get_all_ip_addresses(_state) do
    # Create a query
      query = from u in "units",
          select: u.ip_address1

      # Send the query to the repository
      items = Repo.all(query)
      Enum.map(items, fn ip -> fetching_stats_for(ip) end)
  end

  defp fetching_stats_for(ip_address) do
    # IO.puts ip_address
    _a = Repo.get_by(Units, ip_address1: ip_address)
      |> Ecto.Changeset.change(
          %{up_since: DateTime.truncate(DateTime.utc_now(), :second)}
        )
      |> Repo.update

  end
end
