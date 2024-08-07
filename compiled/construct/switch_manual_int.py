from construct import *
from construct.lib import *

switch_manual_int__opcode__intval = Struct(
	'value' / Int8ub,
)

switch_manual_int__opcode__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b"\x00", include=False, consume=True),
)

switch_manual_int__opcode = Struct(
	'code' / Int8ub,
	'body' / Switch(this.code, {73: LazyBound(lambda: switch_manual_int__opcode__intval), 83: LazyBound(lambda: switch_manual_int__opcode__strval), }),
)

switch_manual_int = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_manual_int__opcode)),
)

_schema = switch_manual_int
