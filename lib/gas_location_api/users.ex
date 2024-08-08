defmodule GasLocationApi.Users do
  alias GasLocationApi.Users.Create
  alias GasLocationApi.Users.Get

  defdelegate get(id), to: Get, as: :call
  defdelegate create(params), to: Create, as: :call

end
