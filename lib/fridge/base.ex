defmodule Fridge.Action do
    def action(action), do: action
end

defmodule Fridge.Nada do
    # nada    = nil or null or false

    def action(action), do: action
end

defmodule Fridge.True do
    # true    = true or anything
end

# Time.

defmodule Fridge.Time do
    # $time    = $now or number
end

# Space
defmodule Fridge.Blah do
    # blah    = _ or anonymous thing
end

defmodule Fridge.Meta do
end

defmodule Fridge.Blob do
end

defmodule Fridge.Code do
end

defmodule Fridge.Data do
end

defmodule Fridge.Tube do
end

defmodule Fridge.Atom do
end

defmodule Fridge.Tuple do

    # {:some, tuple}
    def match(tuple) do
    end

end

defmodule Fridge.Number do
end

defmodule Fridge.List do
end

defmodule Fridge.Point do
end

defmodule Fridge.Struct do
end

defmodule Fridge.Block do
end

defmodule Fridge.Space do
end

defmodule Fridge.Comment do
    # comment = # or // or /* */
    def match(object) do
    end

end

defmodule Fridge.Object do
end

defmodule Fridge.Graph do
    # Graph(nodes, edges, shape)
end

defmodule Fridge.Regex do
    # Regexp
end

defmodule Fridge.Process do
    # thread on a machine/switch combo.
end

defmodule Fridge.Switch do
    # switch the graph to a new edge.
    # switch  = @> data->edge->io.output
end

defmodule Fridge.Machine do
    # direct the virtual machine
    # machine = %machine/<action>
end

defmodule Fridge.Network do
    # broadcast to machine/tube
    # network = |> @> data.machine/tube | reduce

end

defmodule Fridge.Keyword do
    # keyword = <keyword> > spawns to graph
end
