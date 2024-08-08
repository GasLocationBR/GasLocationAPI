defmodule GasLocationApiWeb.UsersJSON do
  alias GasLocationApi.Users.User

  def get(%{user: user}), do: %{data: data(user)}

  def create(%{user: user}) do
    %{
      message: "Usuário criado com sucesso",
      data: data(user)
    }
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      first_name: user.first_name,
      last_name: user.last_name,
      birthdate: user.birthdate,
      email: user.email
    }
  end
end
