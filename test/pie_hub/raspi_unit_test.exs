defmodule PieHub.RaspiUnitTest do
  use PieHub.DataCase

  alias PieHub.RaspiUnit

  describe "units" do
    alias PieHub.RaspiUnit.Units

    import PieHub.RaspiUnitFixtures

    @invalid_attrs %{available_storage: nil, ip_address1: nil, ip_address2: nil, last_check: nil, name: nil, powered_on: nil, total_storage: nil, up_since: nil, used_storage: nil}

    test "list_units/0 returns all units" do
      units = units_fixture()
      assert RaspiUnit.list_units() == [units]
    end

    test "get_units!/1 returns the units with given id" do
      units = units_fixture()
      assert RaspiUnit.get_units!(units.id) == units
    end

    test "create_units/1 with valid data creates a units" do
      valid_attrs = %{available_storage: "some available_storage", ip_address1: "some ip_address1", ip_address2: "some ip_address2", last_check: ~N[2021-10-06 05:11:00], name: "some name", powered_on: true, total_storage: "some total_storage", up_since: ~N[2021-10-06 05:11:00], used_storage: "some used_storage"}

      assert {:ok, %Units{} = units} = RaspiUnit.create_units(valid_attrs)
      assert units.available_storage == "some available_storage"
      assert units.ip_address1 == "some ip_address1"
      assert units.ip_address2 == "some ip_address2"
      assert units.last_check == ~N[2021-10-06 05:11:00]
      assert units.name == "some name"
      assert units.powered_on == true
      assert units.total_storage == "some total_storage"
      assert units.up_since == ~N[2021-10-06 05:11:00]
      assert units.used_storage == "some used_storage"
    end

    test "create_units/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = RaspiUnit.create_units(@invalid_attrs)
    end

    test "update_units/2 with valid data updates the units" do
      units = units_fixture()
      update_attrs = %{available_storage: "some updated available_storage", ip_address1: "some updated ip_address1", ip_address2: "some updated ip_address2", last_check: ~N[2021-10-07 05:11:00], name: "some updated name", powered_on: false, total_storage: "some updated total_storage", up_since: ~N[2021-10-07 05:11:00], used_storage: "some updated used_storage"}

      assert {:ok, %Units{} = units} = RaspiUnit.update_units(units, update_attrs)
      assert units.available_storage == "some updated available_storage"
      assert units.ip_address1 == "some updated ip_address1"
      assert units.ip_address2 == "some updated ip_address2"
      assert units.last_check == ~N[2021-10-07 05:11:00]
      assert units.name == "some updated name"
      assert units.powered_on == false
      assert units.total_storage == "some updated total_storage"
      assert units.up_since == ~N[2021-10-07 05:11:00]
      assert units.used_storage == "some updated used_storage"
    end

    test "update_units/2 with invalid data returns error changeset" do
      units = units_fixture()
      assert {:error, %Ecto.Changeset{}} = RaspiUnit.update_units(units, @invalid_attrs)
      assert units == RaspiUnit.get_units!(units.id)
    end

    test "delete_units/1 deletes the units" do
      units = units_fixture()
      assert {:ok, %Units{}} = RaspiUnit.delete_units(units)
      assert_raise Ecto.NoResultsError, fn -> RaspiUnit.get_units!(units.id) end
    end

    test "change_units/1 returns a units changeset" do
      units = units_fixture()
      assert %Ecto.Changeset{} = RaspiUnit.change_units(units)
    end
  end
end
