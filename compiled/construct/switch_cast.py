from construct import *
from construct.lib import *

switch_cast__opcode = Struct(
	'code' / Int8ub,
	'body' / ???,
)

switch_cast__intval = Struct(
	'value' / Int8ub,
)

switch_cast__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

switch_cast = Struct(
	'opcodes' / switch_cast__opcode,
)

_schema = switch_cast
