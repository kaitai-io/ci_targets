from construct import *
from construct.lib import *

process_bytes_pad_term = Struct(
	'str_pad' / FixedSized(20, NullStripped(GreedyBytes, pad=b'\x40')),
	'str_term' / FixedSized(20, NullTerminated(GreedyBytes, term=b"\x40", include=False)),
	'str_term_and_pad' / FixedSized(20, NullStripped(NullTerminated(GreedyBytes, term=b"\x40", include=False), pad=b'\x2B')),
	'str_term_include' / FixedSized(20, NullTerminated(GreedyBytes, term=b"\x40", include=True)),
)

_schema = process_bytes_pad_term
