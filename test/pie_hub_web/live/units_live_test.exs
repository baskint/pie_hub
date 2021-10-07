defmodule PieHubWeb.UnitsLiveTest do
  use PieHubWeb.ConnCase

  import Phoenix.LiveViewTest
  import PieHub.RaspiUnitFixtures

  @create_attrs %{available_storage: "some available_storage", ip_address1: "some ip_address1", ip_address2: "some ip_address2", last_check: %{day: 6, hour: 5, minute: 11, month: 10, year: 2021}, name: "some name", powered_on: true, total_storage: "some total_storage", up_since: %{day: 6, hour: 5, minute: 11, month: 10, year: 2021}, used_storage: "some used_storage"}
  @update_attrs %{available_storage: "some updated available_storage", ip_address1: "some updated ip_address1", ip_address2: "some updated ip_address2", last_check: %{day: 7, hour: 5, minute: 11, month: 10, year: 2021}, name: "some updated name", powered_on: false, total_storage: "some updated total_storage", up_since: %{day: 7, hour: 5, minute: 11, month: 10, year: 2021}, used_storage: "some updated used_storage"}
  @invalid_attrs %{available_storage: nil, ip_address1: nil, ip_address2: nil, last_check: %{day: 30, hour: 5, minute: 11, month: 2, year: 2021}, name: nil, powered_on: false, total_storage: nil, up_since: %{day: 30, hour: 5, minute: 11, month: 2, year: 2021}, used_storage: nil}

  defp create_units(_) do
    units = units_fixture()
    %{units: units}
  end

  describe "Index" do
    setup [:create_units]

    test "lists all units", %{conn: conn, units: units} do
      {:ok, _index_live, html} = live(conn, Routes.units_index_path(conn, :index))

      assert html =~ "Listing Units"
      assert html =~ units.available_storage
    end

    test "saves new units", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, Routes.units_index_path(conn, :index))

      assert index_live |> element("a", "New Units") |> render_click() =~
               "New Units"

      assert_patch(index_live, Routes.units_index_path(conn, :new))

      assert index_live
             |> form("#units-form", units: @invalid_attrs)
             |> render_change() =~ "is invalid"

      {:ok, _, html} =
        index_live
        |> form("#units-form", units: @create_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.units_index_path(conn, :index))

      assert html =~ "Units created successfully"
      assert html =~ "some available_storage"
    end

    test "updates units in listing", %{conn: conn, units: units} do
      {:ok, index_live, _html} = live(conn, Routes.units_index_path(conn, :index))

      assert index_live |> element("#units-#{units.id} a", "Edit") |> render_click() =~
               "Edit Units"

      assert_patch(index_live, Routes.units_index_path(conn, :edit, units))

      assert index_live
             |> form("#units-form", units: @invalid_attrs)
             |> render_change() =~ "is invalid"

      {:ok, _, html} =
        index_live
        |> form("#units-form", units: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.units_index_path(conn, :index))

      assert html =~ "Units updated successfully"
      assert html =~ "some updated available_storage"
    end

    test "deletes units in listing", %{conn: conn, units: units} do
      {:ok, index_live, _html} = live(conn, Routes.units_index_path(conn, :index))

      assert index_live |> element("#units-#{units.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#units-#{units.id}")
    end
  end

  describe "Show" do
    setup [:create_units]

    test "displays units", %{conn: conn, units: units} do
      {:ok, _show_live, html} = live(conn, Routes.units_show_path(conn, :show, units))

      assert html =~ "Show Units"
      assert html =~ units.available_storage
    end

    test "updates units within modal", %{conn: conn, units: units} do
      {:ok, show_live, _html} = live(conn, Routes.units_show_path(conn, :show, units))

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Units"

      assert_patch(show_live, Routes.units_show_path(conn, :edit, units))

      assert show_live
             |> form("#units-form", units: @invalid_attrs)
             |> render_change() =~ "is invalid"

      {:ok, _, html} =
        show_live
        |> form("#units-form", units: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.units_show_path(conn, :show, units))

      assert html =~ "Units updated successfully"
      assert html =~ "some updated available_storage"
    end
  end
end
