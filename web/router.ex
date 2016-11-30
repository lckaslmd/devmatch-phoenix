defmodule DevmatchElixir.Router do
  use DevmatchElixir.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DevmatchElixir do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/about", PageController, :about
  end

  # Other scopes may use custom stacks.
  # scope "/api", DevmatchElixir do
  #   pipe_through :api
  # end
end
