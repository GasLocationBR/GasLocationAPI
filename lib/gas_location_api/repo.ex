defmodule GasLocationApi.Repo do
  use Ecto.Repo,
    otp_app: :gas_location_api,
    adapter: Ecto.Adapters.Postgres
end
