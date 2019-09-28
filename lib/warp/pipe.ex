defmodule Fridge.Pipe do

  import Plug.Conn
  use WebAssembly
  
  # todo: poll Space for orbits.

  def init(opts) do
    opts
  end

  def call(conn, opts) do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, pipe_page(conn))
  end
  
  # Privates.
  
  defp pipe_page(conn) do
    builder do
      html do
        head do
          meta http_equiv: "Content-Type", content: "text/html"
          title "Fridge"
        end
        body do
          h1 "Welcome to the Machine."
          h2 "$ #{inspect self()}"
          h3 "@ #{inspect conn.path_info}"
        end
      end
    end
  end
  
end