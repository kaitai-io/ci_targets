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
	'body' / Switch(this.code, {73: LazyBound(lambda: cast_nested__opcode__intval), 83: LazyBound(lambda: cast_nested__opcode__strval), }),
)

cast_nested = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: cast_nested__opcode)),
	'opcodes_0_str' / Computed(lambda this: this.opcodes[0].body),
	'opcodes_0_str_value' / Computed(lambda this: this.opcodes[0].body.value),
	'opcodes_1_int' / Computed(lambda this: this.opcodes[1].body),
	'opcodes_1_int_value' / Computed(lambda this: this.opcodes[1].body.value),
)

_schema = cast_nested
