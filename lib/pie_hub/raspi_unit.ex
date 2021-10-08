defmodule PieHub.RaspiUnit do
  @moduledoc """
  The RaspiUnit context.
  """

  import Ecto.Query, warn: false
  alias PieHub.Repo

  alias PieHub.RaspiUnit.Units

  @doc """
  Returns the list of units.

  ## Examples

      iex> list_units()
      [%Units{}, ...]

  """
  def list_units do
    Repo.all(Units)
  end

  @doc """
  Gets a single units.

  Raises `Ecto.NoResultsError` if the Units does not exist.

  ## Examples

      iex> get_units!(123)
      %Units{}

      iex> get_units!(456)
      ** (Ecto.NoResultsError)

  """
  def get_units!(name), do: Repo.get!(Units, name)

  @doc """
  Creates a units.

  ## Examples

      iex> create_units(%{field: value})
      {:ok, %Units{}}

      iex> create_units(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_units(attrs \\ %{}) do
    %Units{}
    |> Units.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a units.

  ## Examples

      iex> update_units(units, %{field: new_value})
      {:ok, %Units{}}

      iex> update_units(units, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_units(%Units{} = units, attrs) do
    units
    |> Units.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a units.

  ## Examples

      iex> delete_units(units)
      {:ok, %Units{}}

      iex> delete_units(units)
      {:error, %Ecto.Changeset{}}

  """
  def delete_units(%Units{} = units) do
    Repo.delete(units)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking units changes.

  ## Examples

      iex> change_units(units)
      %Ecto.Changeset{data: %Units{}}

  """
  def change_units(%Units{} = units, attrs \\ %{}) do
    Units.changeset(units, attrs)
  end
end
