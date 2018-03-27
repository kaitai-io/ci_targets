from construct import *
from construct.lib import *

switch_cast__opcode = Struct(
	'code' / Int8ub,
	'body' / Switch(this.code, {73: LazyBound(lambda: switch_cast__intval), 83: LazyBound(lambda: switch_cast__strval), }),
)

switch_cast__intval = Struct(
	'value' / Int8ub,
)

switch_cast__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

switch_cast = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_cast__opcode)),
	'first_obj' / Computed(lambda this: this.opcodes[0].body),
	'second_val' / Computed(lambda this: this.opcodes[1].body.value),
	'err_cast' / Computed(lambda this: this.opcodes[2].body),
)

_schema = switch_cast
