defmodule Actor do

  def base do
    [System.unique_integer([:positive]), "actor"]
  end

end
