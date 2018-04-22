from construct import *
from construct.lib import *

process_xor4_const = Struct(
	'key' / FixedSized(4, GreedyBytes),
	'buf' / GreedyBytes,
)

_schema = process_xor4_const
