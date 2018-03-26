from construct import *
from construct.lib import *

str_pad_term_empty = Struct(
	'str_pad' / FixedSized(20, NullStripped(GreedyString(encoding='UTF-8'), pad=b'\x40')),
	'str_term' / FixedSized(20, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x40', include=False)),
	'str_term_and_pad' / FixedSized(20, NullStripped(NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x40', include=False), pad=b'\x2B')),
	'str_term_include' / FixedSized(20, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x40', include=True)),
)

_schema = str_pad_term_empty
