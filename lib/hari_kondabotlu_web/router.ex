defmodule HariKondabotluWeb.Router do
  use HariKondabotluWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HariKondabotluWeb do
    pipe_through :api
  end
end
