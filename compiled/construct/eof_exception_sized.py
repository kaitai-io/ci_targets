from construct import *
from construct.lib import *

eof_exception_sized__foo = Struct(
)

eof_exception_sized = Struct(
	'buf' / FixedSized(13, LazyBound(lambda: eof_exception_sized__foo)),
)

_schema = eof_exception_sized
