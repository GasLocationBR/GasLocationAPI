defmodule GasLocationApiWeb.FallbackController do
  use GasLocationApiWeb, :controller

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(GasLocationApiWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end
end
