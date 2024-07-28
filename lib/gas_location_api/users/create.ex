defmodule GasLocationApi.Users.Create do
  alias GasLocationApi.Users.User
  alias GasLocationApi.Repo

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
