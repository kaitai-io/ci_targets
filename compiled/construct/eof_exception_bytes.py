from construct import *
from construct.lib import *

eof_exception_bytes = Struct(
	'buf' / Bytes(13),
)

_schema = eof_exception_bytes
