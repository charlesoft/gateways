defmodule Gateways.Repo.Migrations.CreatePlaces do
  use Ecto.Migration

  def change do
    create table(:places) do
      add :name, :string, null: false
      add :location, :string, null: false
      add :max_guests, :integer, null: false

      timestamps()
    end
  end
end
