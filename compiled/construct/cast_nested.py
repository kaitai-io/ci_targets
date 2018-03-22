from construct import *
from construct.lib import *

cast_nested__opcode__intval = Struct(
	'value' / Int8ub,
)

cast_nested__opcode__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

cast_nested__opcode = Struct(
	'code' / Int8ub,
	'body' / ???,
)

cast_nested = Struct(
	'opcodes' / cast_nested__opcode,
)

_schema = cast_nested
