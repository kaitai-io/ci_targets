from construct import *
from construct.lib import *

bits_byte_aligned_eof_le = Struct(
	'prebuf' / FixedSized(8, GreedyBytes),
	'bits' / ???,
)

_schema = bits_byte_aligned_eof_le
