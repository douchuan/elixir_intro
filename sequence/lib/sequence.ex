defmodule Sequence do
  use Application

  def start(_type, initial_number) do
    children = [
      {Sequence.Stash, initial_number},
      {Sequence.Server, nil}
    ]

    opts = [strategy: :one_for_one, name: Sequence.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
