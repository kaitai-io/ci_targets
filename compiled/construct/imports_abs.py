from construct import *
from construct.lib import *

imports_abs = Struct(
	'len' / LazyBound(lambda: vlq_base128_le),
	'body' / FixedSized(this.len.value, GreedyBytes),
)

_schema = imports_abs
