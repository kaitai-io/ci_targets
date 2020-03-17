from construct import *
from construct.lib import *

switch_manual_enum_invalid_else__opcode__intval = Struct(
	'value' / Int8ub,
)

switch_manual_enum_invalid_else__opcode__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

switch_manual_enum_invalid_else__opcode__defval = Struct(
	'value' / Computed(lambda this: 123),
)

def switch_manual_enum_invalid_else__opcode__code_enum(subcon):
	return Enum(subcon,
		intval=73,
		strval=83,
	)

switch_manual_enum_invalid_else__opcode = Struct(
	'code' / switch_manual_enum_invalid_else__opcode__code_enum(Int8ub),
	'body' / Switch(this.code, {SwitchManualEnumInvalidElse.Opcode.CodeEnum.intval: LazyBound(lambda: switch_manual_enum_invalid_else__opcode__intval), SwitchManualEnumInvalidElse.Opcode.CodeEnum.strval: LazyBound(lambda: switch_manual_enum_invalid_else__opcode__strval), }, default=LazyBound(lambda: switch_manual_enum_invalid_else__opcode__defval)),
)

switch_manual_enum_invalid_else = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_manual_enum_invalid_else__opcode)),
)

_schema = switch_manual_enum_invalid_else
