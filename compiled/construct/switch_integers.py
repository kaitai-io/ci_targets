from construct import *
from construct.lib import *

switch_integers__opcode = Struct(
	'code' / Int8ub,
	'body' / ???,
)

switch_integers = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_integers__opcode)),
)

_schema = switch_integers
