from construct import *
from construct.lib import *

bytes_pad_term_roundtrip = Struct(
	'str_pad' / FixedSized(20, NullStripped(GreedyBytes, pad=b'\x40')),
	'str_term' / FixedSized(20, NullStripped(NullTerminated(GreedyBytes, term=b"\x40", include=False), pad=b'\x2B')),
	'str_term_and_pad' / FixedSized(20, NullStripped(NullTerminated(GreedyBytes, term=b"\x40", include=False), pad=b'\x2B')),
	'str_term_include' / FixedSized(20, NullStripped(NullTerminated(GreedyBytes, term=b"\x40", include=True), pad=b'\x2E')),
)

_schema = bytes_pad_term_roundtrip
