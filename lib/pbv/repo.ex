defmodule Pbv.Repo do
  use Ecto.Repo,
    otp_app: :pbv,
    adapter: Ecto.Adapters.Postgres
end
