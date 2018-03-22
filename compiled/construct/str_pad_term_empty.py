from construct import *
from construct.lib import *

str_pad_term_empty = Struct(
	'str_pad' / FixedSized(20, GreedyString(encoding='UTF-8')),
	'str_term' / FixedSized(20, GreedyString(encoding='UTF-8')),
	'str_term_and_pad' / FixedSized(20, GreedyString(encoding='UTF-8')),
	'str_term_include' / FixedSized(20, GreedyString(encoding='UTF-8')),
)

_schema = str_pad_term_empty
