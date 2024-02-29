from construct import *
from construct.lib import *

expr_sizeof_value_0__block = Struct(
	'a' / Int8ub,
	'b' / Int32ul,
	'c' / FixedSized(2, GreedyBytes),
)

expr_sizeof_value_0 = Struct(
	'block1' / LazyBound(lambda: expr_sizeof_value_0__block),
	'more' / Int16ul,
	'sizeof_block_c' / Computed(lambda this: 2),
	'self_sizeof' / Computed(lambda this: 9),
	'sizeof_block_a' / Computed(lambda this: 1),
	'sizeof_block_b' / Computed(lambda this: 4),
	'sizeof_block' / Computed(lambda this: 7),
)

_schema = expr_sizeof_value_0
