from construct import *
from construct.lib import *

str_eos_pad_term__str_pad_type = Struct(
	'value' / GreedyString(encoding='UTF-8'),
)

str_eos_pad_term__str_term_and_pad_type = Struct(
	'value' / GreedyString(encoding='UTF-8'),
)

str_eos_pad_term__str_term_include_type = Struct(
	'value' / GreedyString(encoding='UTF-8'),
)

str_eos_pad_term__str_term_type = Struct(
	'value' / GreedyString(encoding='UTF-8'),
)

str_eos_pad_term = Struct(
	'str_pad' / FixedSized(20, LazyBound(lambda: str_eos_pad_term__str_pad_type)),
	'str_term' / FixedSized(20, LazyBound(lambda: str_eos_pad_term__str_term_type)),
	'str_term_and_pad' / FixedSized(20, LazyBound(lambda: str_eos_pad_term__str_term_and_pad_type)),
	'str_term_include' / FixedSized(20, LazyBound(lambda: str_eos_pad_term__str_term_include_type)),
)

_schema = str_eos_pad_term
