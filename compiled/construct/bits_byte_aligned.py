from construct import *
from construct.lib import *

bits_byte_aligned__foo = Struct(
	'inner' / ???,
)

bits_byte_aligned = Struct(
	'one' / ???,
	'byte_1' / Int8ub,
	'two' / ???,
	'three' / ???,
	'byte_2' / FixedSized(1, GreedyBytes),
	'four' / ???,
	'byte_3' / FixedSized(3, LazyBound(lambda: bits_byte_aligned__foo)),
	'full_byte' / ???,
	'byte_4' / Int8ub,
	'five' / ???,
	'bytes_term' / NullTerminated(GreedyBytes, term=b"\x45", include=True, consume=True),
	'six' / ???,
)

_schema = bits_byte_aligned
