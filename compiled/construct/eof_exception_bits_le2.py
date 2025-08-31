from construct import *
from construct.lib import *

eof_exception_bits_le2 = Struct(
	'pre_bits' / ???,
	'fail_bits' / ???,
)

_schema = eof_exception_bits_le2
