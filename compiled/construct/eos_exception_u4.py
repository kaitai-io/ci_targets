from construct import *
from construct.lib import *

eos_exception_u4__data = Struct(
	'prebuf' / FixedSized(3, GreedyBytes),
	'fail_int' / Int32ul,
)

eos_exception_u4 = Struct(
	'envelope' / FixedSized(6, LazyBound(lambda: eos_exception_u4__data)),
)

_schema = eos_exception_u4
