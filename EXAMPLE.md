# Example

comment = # or // or /* */
nada    = nil or null or false
true    = true or anything
blah    = _
meta    = .
pipe    = |
atom    = :atom or atom:
number  = 1 or 1.0 or 1.0e8
list    = [0, 1, 2] or [a, [], [_]]
tuple   = (:tuple, meta, list)
point   = name(:gate_tuple) > (:tube_tuple)
struct  = #point{}
block   = block(point, code)
blob    = "" or <<binary>>
code    = code(gate) > (tube) or <do...end>
data    = data
time    = $now
space   = Space
object  = #object(tuple)
graph   = #Graph<property: whatever>
regex   = /.+/
process = $self
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
