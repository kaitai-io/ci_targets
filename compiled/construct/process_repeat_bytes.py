from construct import *
from construct.lib import *

process_repeat_bytes = Struct(
	'bufs' / Array(2, FixedSized(5, GreedyBytes)),
)

_schema = process_repeat_bytes
