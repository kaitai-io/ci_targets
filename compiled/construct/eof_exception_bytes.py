from construct import *
from construct.lib import *

eof_exception_bytes = Struct(
	'buf' / FixedSized(13, GreedyBytes),
)

_schema = eof_exception_bytes
