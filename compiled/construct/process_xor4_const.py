from construct import *
from construct.lib import *

process_xor4_const = Struct(
	'key' / Bytes(4),
	'buf' / GreedyBytes,
)

_schema = process_xor4_const
