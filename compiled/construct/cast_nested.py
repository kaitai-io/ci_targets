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
	'opcodes' / GreedyRange(cast_nested__opcode),
	'opcodes_0_str' / Computed(self.opcodes[0].body),
	'opcodes_0_str_value' / Computed(self.opcodes[0].body.value),
	'opcodes_1_int' / Computed(self.opcodes[1].body),
	'opcodes_1_int_value' / Computed(self.opcodes[1].body.value),
)

_schema = cast_nested
