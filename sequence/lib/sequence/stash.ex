defmodule Sequence.Stash do
  use GenServer

  ######
  # External API

  def start_link(current_number) do
    {:ok, _pid} = GenServer.start_link(__MODULE__, current_number, name: __MODULE__)
  end

  def save_value(value) do
    GenServer.cast(__MODULE__, {:save_value, value})
  end

  def get_value() do
    GenServer.call(__MODULE__, :get_value)
  end

  ######
  # GenServer impl

  def init(current_number) do
    {:ok, current_number}
  end

  def handle_call(:get_value, _from, current_value) do
    {:reply, current_value, current_value}
  end

  def handle_cast({:save_value, value}, _current_value) do
    {:noreply, value}
  end
end
