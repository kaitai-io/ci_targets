from construct import *
from construct.lib import *

repeat_n_bytes_pad_term = Struct(
	'records' / Array(3, FixedSized(5, NullStripped(NullTerminated(GreedyBytes, term=b"\x55", include=True), pad=b'\xAA'))),
)

_schema = repeat_n_bytes_pad_term
