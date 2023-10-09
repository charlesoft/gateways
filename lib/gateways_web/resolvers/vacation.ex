defmodule GatewaysWeb.Resolvers.Vacation do
  alias Gateways.Vacation

  def places(_, _, _) do
    {:ok, Vacation.list_places()}
  end

  def place(_, %{id: id}, _) do
    {:ok, Vacation.get_place!(id)}
  end
end
