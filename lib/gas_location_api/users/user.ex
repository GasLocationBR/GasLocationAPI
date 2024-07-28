defmodule GasLocationApi.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset

  @required_params [:name, :lastname, :birthdate, :email, :password]

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :birthdate, :string
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  def changeset(user \\ %__MODULE__{}, params) do
    user
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:first_name, min: 3)
    |> validate_length(:last_name, min: 3)
    |> validate_format(:email, ~r/@/)
    |> add_password_hash()
  end

  defp add_password_hash(%Changeset{valid?: true, changes: %{password: password}} = changeset) do
    change(changeset, password_hash: Argon2.hash_pwd_salt(password))
  end

  defp add_password_hash(changeset), do: changeset
end
