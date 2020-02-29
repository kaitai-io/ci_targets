from construct import *
from construct.lib import *

switch_else_only__data = Struct(
	'value' / FixedSized(4, GreedyBytes),
)

switch_else_only = Struct(
	'opcode' / Int8sb,
	'prim_byte' / Switch(this.opcode, {}, default=Int8sb),
	'struct' / Switch(this.opcode, {}, default=LazyBound(lambda: switch_else_only__data)),
	'struct_sized' / Switch(this.opcode, {}, default=FixedSized(4, LazyBound(lambda: switch_else_only__data))),
)

_schema = switch_else_only
