from construct import *
from construct.lib import *

eof_exception_u4 = Struct(
	'prebuf' / Bytes(9),
	'fail_int' / Int32ul,
)

_schema = eof_exception_u4
