defmodule Sequence.Server do
  use GenServer

  ######
  # External API

  def start_link(_) do
    {:ok, _pid} = GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def next_number do
    GenServer.call(__MODULE__, :next_number)
  end

  def increment_number(delta) do
    GenServer.cast(__MODULE__, {:increment_number, delta})
  end

  ######
  # GenServer implementation

  def init(_) do
    # restore "current_number"
    current_number = Sequence.Stash.get_value()
    {:ok, current_number}
  end

  def handle_call(:next_number, _from, current_number) do
    {:reply, current_number, current_number + 1}
  end

  def handle_cast({:increment_number, delta}, current_number) do
    {:noreply, current_number + delta}
  end

  # save "current_number"
  def terminate(_reason, current_number) do
    Sequence.Stash.save_value(current_number)
  end
end
