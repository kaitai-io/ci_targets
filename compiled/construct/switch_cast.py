from construct import *
from construct.lib import *

switch_cast__opcode = Struct(
	'code' / Int8ub,
	'body' / ???,
)

switch_cast__intval = Struct(
	'value' / Int8ub,
)

switch_cast__strval = Struct(
	'value' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x00', include=False, consume=True),
)

switch_cast = Struct(
	'opcodes' / GreedyRange(switch_cast__opcode),
	'first_obj' / Computed(this.opcodes[0].body),
	'second_val' / Computed(this.opcodes[1].body.value),
	'err_cast' / Computed(this.opcodes[2].body),
)

_schema = switch_cast
