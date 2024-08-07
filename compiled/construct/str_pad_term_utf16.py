from construct import *
from construct.lib import *

str_pad_term_utf16 = Struct(
	'str_term' / FixedSized(10, NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False)),
	'str_term_include' / FixedSized(10, NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=True)),
	'str_term_and_pad' / FixedSized(9, NullStripped(NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False), pad=b'\x2B')),
)

_schema = str_pad_term_utf16
