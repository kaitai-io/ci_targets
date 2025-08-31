from construct import *
from construct.lib import *

repeat_n_bytes_pad = Struct(
	'records' / Array(3, FixedSized(5, NullStripped(GreedyBytes, pad=b'\xAA'))),
)

_schema = repeat_n_bytes_pad
