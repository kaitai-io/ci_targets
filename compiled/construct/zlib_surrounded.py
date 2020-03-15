from construct import *
from construct.lib import *

zlib_surrounded__inflated = Struct(
	'inflated' / Int32sl,
)

zlib_surrounded = Struct(
	'pre' / FixedSized(4, GreedyBytes),
	'zlib' / FixedSized(12, LazyBound(lambda: zlib_surrounded__inflated)),
	'post' / FixedSized(4, GreedyBytes),
)

_schema = zlib_surrounded
