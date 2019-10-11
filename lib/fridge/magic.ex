defmodule Magic do
  @moduledoc """
  # Magic
  ## Do cool stuff.

  Is this real or just fantasy?
  """

  @example "EXAMPLE.md"

  def __using__(source, opts \\ nil) do
    File.cwd!()
    |> Path.join(@example)
    |> File.read!()
    |> Magic.meta()
  end

  def meta(text) do
    # todo: some meta level stuff for the object.
    IO.inspect(text)

    text
  end

  def code(point, block) do
    # todo: plot the code point into space
    # Space.news(point, block)
  end

  def stop!(flow) do
  end
end
