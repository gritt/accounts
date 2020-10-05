defmodule AccountsWeb.Router do
  use AccountsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AccountsWeb do
    pipe_through :api

    get "/healthcheck", ApiController, :healthcheck
  end
end
