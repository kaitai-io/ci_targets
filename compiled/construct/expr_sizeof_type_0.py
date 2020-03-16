from construct import *
from construct.lib import *

expr_sizeof_type_0__block = Struct(
	'a' / Int8ub,
	'b' / Int32ul,
	'c' / FixedSized(2, GreedyBytes),
)

expr_sizeof_type_0 = Struct(
	'sizeof_block' / Computed(lambda this: 7),
)

_schema = expr_sizeof_type_0
