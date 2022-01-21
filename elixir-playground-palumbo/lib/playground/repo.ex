defmodule Exercise.Repo do
  # See https://hexdocs.pm/ecto/Ecto.Repo.html
  # for more information on Repo usage 
  @moduledoc false
  use Ecto.Repo,
    otp_app: :be_exercise,
    adapter: Ecto.Adapters.Postgres
end
