defmodule Gateways.Repo do
  use Ecto.Repo,
    otp_app: :gateways,
    adapter: Ecto.Adapters.Postgres
end
