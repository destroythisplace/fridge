defmodule Fridge.Pipe do

end

defmodule Fridge.Pipe.Plug do

  import Plug.Conn

  # todo: poll Space for orbits.

  def init(opts) do
    opts
  end

  def call(conn = %Plug.Conn{path_info: path_info}, opts) do
    IO.inspect conn
  end

  def call(conn, opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, IO.inspect(self()))
  end

end