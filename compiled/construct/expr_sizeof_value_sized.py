from construct import *
from construct.lib import *

expr_sizeof_value_sized__block = Struct(
	'a' / Int8ub,
	'b' / Int32ul,
	'c' / FixedSized(2, GreedyBytes),
)

expr_sizeof_value_sized = Struct(
	'block1' / FixedSized(12, LazyBound(lambda: expr_sizeof_value_sized__block)),
	'more' / Int16ul,
	'self_sizeof' / Computed(lambda this: 14),
	'sizeof_block' / Computed(lambda this: 12),
	'sizeof_block_a' / Computed(lambda this: 1),
	'sizeof_block_b' / Computed(lambda this: 4),
	'sizeof_block_c' / Computed(lambda this: 2),
)

_schema = expr_sizeof_value_sized
