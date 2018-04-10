from construct import *
from construct.lib import *

process_xor_const = Struct(
	'key' / Int8ub,
	'buf' / GreedyBytes,
)

_schema = process_xor_const
