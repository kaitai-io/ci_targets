from construct import *
from construct.lib import *

str_pad_term_equal = Struct(
	's1' / FixedSized(20, NullStripped(NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x40", include=False), pad=b'\x40')),
	's2' / FixedSized(20, NullStripped(NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x40", include=True), pad=b'\x2B')),
	's3' / FixedSized(20, NullStripped(NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x2B", include=False), pad=b'\x2B')),
	's4' / FixedSized(20, NullStripped(NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x2E", include=True), pad=b'\x2E')),
)

_schema = str_pad_term_equal
