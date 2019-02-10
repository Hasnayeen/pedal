defmodule Pedal.Repo do
  use Ecto.Repo,
    otp_app: :pedal,
    adapter: Ecto.Adapters.Postgres
end
