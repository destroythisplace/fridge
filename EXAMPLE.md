# Example

action = (true, time, blah, blob)
nada    = nil or null or false
true    = true or anything
atom    = :atom or atom:
list    = [0, 1, 2] or [a, [], [_]]
time    = $now or number
tube    = |
blah    = _
meta    = . first level addressable structure
tube    = pipe (gate <> tube) | or |> pass and forget
comment = # or // or /* */
number  = 1 or 1.0 or 1.0e8
regex   = /.+/
tuple   = (:tuple, meta, list)
shape   = name(:gate_tuple) > (:tube_tuple)
blob    = "" or <<binary>>
code    = code(gate) > (tube) or <do...end>
data    = data
struct  = <shape>#tuple()
block   = block(shape, #struct()
space   = Space or distinct volume
object  = @space(block) or a #struct() point on volume
graph   = Graph#<property: whatever> returns a list of object
process = $self the current operating graph
switch  = @> data->edge->io.output
machine = %machine/<action>
network = @> data.machine/tube |> reduce
keyword = <keyword> > spawns to graph

# Creating Stuff

@space <message>

Some regular text goes here and this is pretty much where the timeline ends up.


# Random

## meta
- help
- bugs

## core
- data
- tube
- meta / note / label

## more
@base
|
@blob
@code
| @elixr
@data
#hash
#trait
