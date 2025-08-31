from construct import *
from construct.lib import *

bytes_pad_term_equal = Struct(
	's1' / FixedSized(20, NullStripped(NullTerminated(GreedyBytes, term=b"\x40", include=False), pad=b'\x40')),
	's2' / FixedSized(20, NullStripped(NullTerminated(GreedyBytes, term=b"\x40", include=True), pad=b'\x2B')),
	's3' / FixedSized(20, NullStripped(NullTerminated(GreedyBytes, term=b"\x2B", include=False), pad=b'\x2B')),
	's4' / FixedSized(20, NullStripped(NullTerminated(GreedyBytes, term=b"\x2E", include=True), pad=b'\x2E')),
)

_schema = bytes_pad_term_equal
