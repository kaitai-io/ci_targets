from construct import *
from construct.lib import *

repeat_eos_bytes_pad = Struct(
	'records' / GreedyRange(FixedSized(5, NullStripped(GreedyBytes, pad=b'\xAA'))),
)

_schema = repeat_eos_bytes_pad
