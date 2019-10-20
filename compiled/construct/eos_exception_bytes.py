from construct import *
from construct.lib import *

eos_exception_bytes__data = Struct(
	'buf' / FixedSized(7, GreedyBytes),
)

eos_exception_bytes = Struct(
	'envelope' / FixedSized(6, LazyBound(lambda: eos_exception_bytes__data)),
)

_schema = eos_exception_bytes
