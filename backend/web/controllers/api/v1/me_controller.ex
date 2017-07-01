defmodule Backend.MeController do
  use Backend.Web, :controller

  plug Guardian.Plug.EnsureAuthenticated, handler: Backend.SessionController

  def show(conn, _) do
    user = Guardian.Plug.current_resource(conn)

    conn
    |> put_status(:ok)
    |> render("show.json", user: user)
  end
end
