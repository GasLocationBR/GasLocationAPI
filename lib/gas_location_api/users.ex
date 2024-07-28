defmodule GasLocationApi.Users do
  alias GasLocationApi.Users.Create

  defdelegate create(params), to: Create, as: :call
end
