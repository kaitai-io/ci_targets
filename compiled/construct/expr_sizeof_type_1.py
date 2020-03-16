from construct import *
from construct.lib import *

expr_sizeof_type_1__block__subblock = Struct(
	'a' / FixedSized(4, GreedyBytes),
)

expr_sizeof_type_1__block = Struct(
	'a' / Int8ub,
	'b' / Int32ul,
	'c' / FixedSized(2, GreedyBytes),
	'd' / LazyBound(lambda: expr_sizeof_type_1__block__subblock),
)

expr_sizeof_type_1 = Struct(
	'sizeof_block' / Computed(lambda this: 11),
	'sizeof_subblock' / Computed(lambda this: 4),
)

_schema = expr_sizeof_type_1
