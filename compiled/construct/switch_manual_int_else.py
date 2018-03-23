from construct import *
from construct.lib import *

switch_manual_int_else__opcode__intval = Struct(
	'value' / Int8ub,
)

switch_manual_int_else__opcode__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

switch_manual_int_else__opcode__noneval = Struct(
	'filler' / Int32ul,
)

switch_manual_int_else__opcode = Struct(
	'code' / Int8ub,
	'body' / ???,
)

switch_manual_int_else = Struct(
	'opcodes' / GreedyRange(switch_manual_int_else__opcode),
)

_schema = switch_manual_int_else
