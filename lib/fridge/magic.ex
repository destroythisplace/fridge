defmodule Magic do

  @moduledoc """
  # Magic
  ## Do cool stuff.

  Is this real or just fantasy?
  """

  @example "EXAMPLE.md"

  def __using__(source, opts \\ nil) do
    action = {true, Time.utc_now}

    # read the example text
    cwd = File.cwd!
    meta = %{
      meta: [],
      data: {:path, cwd},
      data: {:source, source},
    }

    source = cwd
    |> Path.join(@example)
    |> File.read!

    action = [action,
      {:meta, meta},
      {:source, source},
    ]
    |> Magic.meta
    |> Magic.code
    # |> Base.nada
    |> Magic.stop!
    |> Space.space
  end


  def meta(action) do
    # todo: some meta level stuff for the object.
    IO.inspect action

    # create root graph and add
    graph = Graph.new
    graph = Graph.add_vertex(graph, action)

    # convert tuple to list
    action
  end

  def code(action, block \\ nil) do
  # todo: plot the code point into space
  # Space.news(point, block)
    action
  end

  def stop!(action) do
    action
  end

end
