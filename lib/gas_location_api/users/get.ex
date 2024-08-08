defmodule GasLocationApi.Users.Get do
  alias GasLocationApi.Users.User
  alias GasLocationApi.Repo

  def call(id) do
    case Repo.get(User, id) do
      nil -> {:error, :not_found}
      user -> {:ok, user}
    end
  end
end
