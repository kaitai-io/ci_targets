from construct import *
from construct.lib import *

switch_integers__opcode = Struct(
	'code' / Int8ub,
	'body' / Switch(this.code, {1: Int8ub, 2: Int16ul, 4: Int32ul, 8: Int64ul, }),
)

switch_integers = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_integers__opcode)),
)

_schema = switch_integers
