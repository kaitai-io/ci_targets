from construct import *
from construct.lib import *

bits_byte_aligned = Struct(
	'one' / ???,
	'byte_1' / Int8ub,
	'two' / ???,
	'three' / ???,
	'byte_2' / Int8ub,
	'four' / ???,
	'byte_3' / Bytes(1),
	'full_byte' / ???,
	'byte_4' / Int8ub,
)

_schema = bits_byte_aligned
