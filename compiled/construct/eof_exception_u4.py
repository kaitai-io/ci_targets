from construct import *
from construct.lib import *

eof_exception_u4 = Struct(
	'prebuf' / FixedSized(9, GreedyBytes),
	'fail_int' / Int32ul,
)

_schema = eof_exception_u4
