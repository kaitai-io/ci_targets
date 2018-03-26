from construct import *
from construct.lib import *

switch_bytearray__opcode__intval = Struct(
	'value' / Int8ub,
)

switch_bytearray__opcode__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

switch_bytearray__opcode = Struct(
	'code' / FixedSized(1, GreedyBytes),
	'body' / ???,
)

switch_bytearray = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_bytearray__opcode)),
)

_schema = switch_bytearray
