defmodule Gateways.Vacation.Place do
  @moduledoc """
  Place model
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "places" do
    field :location, :string
    field :max_guests, :integer
    field :name, :string

    timestamps()
  end

  def changeset(place, attrs) do
    place
    |> cast(attrs, [:name, :location, :max_guests])
    |> validate_required([:name, :location, :max_guests])
  end
end
