from construct import *
from construct.lib import *

if_values__code = Struct(
	'opcode' / Int8ub,
	'half_opcode' / If((this.opcode % 2) == 0, Computed(this.opcode // 2)),
)

if_values = Struct(
	'codes' / Array(3, LazyBound(lambda: if_values__code)),
)

_schema = if_values
