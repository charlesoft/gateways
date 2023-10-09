defmodule GatewaysWeb.Schema.Schema do
  use Absinthe.Schema

  query do
    @desc "Get a list of places"
    field :places, list_of(:place) do
      resolve(&GatewaysWeb.Resolvers.Vacation.places/3)
    end

    @desc "Get a place by its id"
    field :place, :place do
      arg(:id, non_null(:id))
      resolve(&GatewaysWeb.Resolvers.Vacation.place/3)
    end
  end

  mutation do
    @desc "Create a place"
    field :create_place, type: :place do
      arg :name, non_null(:string)
      arg :location, non_null(:string)
      arg :max_guests, non_null(:integer)

      resolve(&GatewaysWeb.Resolvers.Vacation.create_place/3)
    end
  end

  object :place do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :location, non_null(:string)
    field :max_guests, non_null(:integer)
  end
end
