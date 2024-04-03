from construct import *
from construct.lib import *

eos_exception_sized__data = Struct(
	'buf' / FixedSized(7, LazyBound(lambda: eos_exception_sized__foo)),
)

eos_exception_sized__foo = Struct(
)

eos_exception_sized = Struct(
	'envelope' / FixedSized(6, LazyBound(lambda: eos_exception_sized__data)),
)

_schema = eos_exception_sized
