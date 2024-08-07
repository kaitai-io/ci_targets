from construct import *
from construct.lib import *
import enum

class switch_manual_enum_invalid_else__opcode__code_enum(enum.IntEnum):
	intval = 73
	strval = 83

switch_manual_enum_invalid_else__opcode__defval = Struct(
	'value' / Computed(lambda this: 123),
)

switch_manual_enum_invalid_else__opcode__intval = Struct(
	'value' / Int8ub,
)

switch_manual_enum_invalid_else__opcode__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b"\x00", include=False, consume=True),
)

switch_manual_enum_invalid_else__opcode = Struct(
	'code' / Enum(Int8ub, switch_manual_enum_invalid_else__opcode__code_enum),
	'body' / Switch(this.code, {'intval': LazyBound(lambda: switch_manual_enum_invalid_else__opcode__intval), 'strval': LazyBound(lambda: switch_manual_enum_invalid_else__opcode__strval), }, default=LazyBound(lambda: switch_manual_enum_invalid_else__opcode__defval)),
)

switch_manual_enum_invalid_else = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_manual_enum_invalid_else__opcode)),
)

_schema = switch_manual_enum_invalid_else
