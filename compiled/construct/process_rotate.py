from construct import *
from construct.lib import *

process_rotate = Struct(
	'buf1' / FixedSized(5, GreedyBytes),
	'buf2' / FixedSized(5, GreedyBytes),
	'key' / Int8ub,
	'buf3' / FixedSized(5, GreedyBytes),
)

_schema = process_rotate
