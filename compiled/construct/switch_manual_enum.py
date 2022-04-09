from construct import *
from construct.lib import *

def switch_manual_enum__opcode__code_enum(subcon):
	return Enum(subcon,
		intval=73,
		strval=83,
	)

switch_manual_enum__opcode__intval = Struct(
	'value' / Int8ub,
)

switch_manual_enum__opcode__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

switch_manual_enum__opcode = Struct(
	'code' / switch_manual_enum__opcode__code_enum(Int8ub),
	'body' / Switch(this.code, {SwitchManualEnum.Opcode.CodeEnum.intval: LazyBound(lambda: switch_manual_enum__opcode__intval), SwitchManualEnum.Opcode.CodeEnum.strval: LazyBound(lambda: switch_manual_enum__opcode__strval), }),
)

switch_manual_enum = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_manual_enum__opcode)),
)

_schema = switch_manual_enum
