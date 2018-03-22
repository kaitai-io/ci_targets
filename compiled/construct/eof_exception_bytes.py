from construct import *
from construct.lib import *

eof_exception_bytes = Struct(
	'buf' / ???,
)

_schema = eof_exception_bytes
