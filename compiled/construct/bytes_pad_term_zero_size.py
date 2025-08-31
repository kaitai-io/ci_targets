from construct import *
from construct.lib import *

bytes_pad_term_zero_size = Struct(
	'str_pad' / FixedSized(0, NullStripped(GreedyBytes, pad=b'\x40')),
	'str_term' / FixedSized(0, NullTerminated(GreedyBytes, term=b"\x40", include=False)),
	'str_term_and_pad' / FixedSized(0, NullStripped(NullTerminated(GreedyBytes, term=b"\x40", include=False), pad=b'\x2B')),
	'str_term_include' / FixedSized(0, NullTerminated(GreedyBytes, term=b"\x40", include=True)),
)

_schema = bytes_pad_term_zero_size
