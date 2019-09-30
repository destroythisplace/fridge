defmodule Space do

  # defstruct hash: nil

  def space(action) do
    action

    #{:ok, register} = Registry.register(Fridge.Register, head)
    ##|> Flow.from_enumerable

    # process the action
    action
    |> volume
    |> surface
    |> mass
    |> energy
    |> time
  end

  def volume(action) do
    Register.dispatch
  end

  def surface(action) do

  end

  def mass(action) do

  end

  def energy(action) do

  end

  def time(action) do

  end

end
