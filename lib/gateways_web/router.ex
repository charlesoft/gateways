defmodule GatewaysWeb.Router do
  use GatewaysWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug,
      schema: GatewaysWeb.Schema.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: GatewaysWeb.Schema.Schema,
      interface: :simple
  end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through [:fetch_session, :protect_from_forgery]

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
