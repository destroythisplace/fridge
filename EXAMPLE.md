# Example

# graph
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

# Kind
nada    = nil or null or false
true    = true or anything
blah    = _
comment = # or // or /* */
atom    = :atom or atom:
number  = 1 or 1.0 or 1.0e8
list    = [0, 1, 2] or [a, [], [_]]
tuple   = (:tuple, meta, list)
point   = name(:gate_tuple) > (:tube_tuple)
struct  = point{}
block   = block(point, block)
pipe    = |
meta    = .
blob    = "" or <<binary>>
code    = code(gate) > (tube)
data    = data
time    = $now
space   = Space
object  = #object(tuple)
graph   = #Graph<property: whatever>
regex   = /.+/
process = $self

keyword = <keyword> > spawns to graph


# Example

@space <message>


