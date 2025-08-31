from construct import *
from construct.lib import *

str_eos_pad_term_equal__s1_type = Struct(
	'value' / GreedyString(encoding='UTF-8'),
)

str_eos_pad_term_equal__s2_type = Struct(
	'value' / GreedyString(encoding='UTF-8'),
)

str_eos_pad_term_equal__s3_type = Struct(
	'value' / GreedyString(encoding='UTF-8'),
)

str_eos_pad_term_equal__s4_type = Struct(
	'value' / GreedyString(encoding='UTF-8'),
)

str_eos_pad_term_equal = Struct(
	's1' / FixedSized(20, LazyBound(lambda: str_eos_pad_term_equal__s1_type)),
	's2' / FixedSized(20, LazyBound(lambda: str_eos_pad_term_equal__s2_type)),
	's3' / FixedSized(20, LazyBound(lambda: str_eos_pad_term_equal__s3_type)),
	's4' / FixedSized(20, LazyBound(lambda: str_eos_pad_term_equal__s4_type)),
)

_schema = str_eos_pad_term_equal
