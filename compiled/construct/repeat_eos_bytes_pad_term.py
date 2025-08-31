from construct import *
from construct.lib import *

repeat_eos_bytes_pad_term = Struct(
	'records' / GreedyRange(FixedSized(5, NullStripped(NullTerminated(GreedyBytes, term=b"\x55", include=True), pad=b'\xAA'))),
)

_schema = repeat_eos_bytes_pad_term
