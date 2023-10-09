defmodule Gateways.VacationFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Gateways.Vacation` context.
  """

  @doc """
  Generate a place.
  """
  def place_fixture(attrs \\ %{}) do
    {:ok, place} =
      attrs
      |> Enum.into(%{
        location: "some location",
        max_guests: 42,
        name: "some name"
      })
      |> Gateways.Vacation.create_place()

    place
  end
end
