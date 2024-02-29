from construct import *
from construct.lib import *

switch_manual_str_else__opcode__intval = Struct(
	'value' / Int8ub,
)

switch_manual_str_else__opcode__noneval = Struct(
	'filler' / Int32ul,
)

switch_manual_str_else__opcode__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

switch_manual_str_else__opcode = Struct(
	'code' / FixedSized(1, GreedyString(encoding='ASCII')),
	'body' / Switch(this.code, {u"I": LazyBound(lambda: switch_manual_str_else__opcode__intval), u"S": LazyBound(lambda: switch_manual_str_else__opcode__strval), }, default=LazyBound(lambda: switch_manual_str_else__opcode__noneval)),
)

switch_manual_str_else = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_manual_str_else__opcode)),
)

_schema = switch_manual_str_else
