from construct import *
from construct.lib import *

eof_exception_u4 = Struct(
	'prebuf' / ???,
	'fail_int' / Int32ul,
)

_schema = eof_exception_u4
