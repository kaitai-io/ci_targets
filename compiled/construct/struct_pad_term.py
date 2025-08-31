from construct import *
from construct.lib import *

struct_pad_term__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

struct_pad_term = Struct(
	'str_pad' / FixedSized(20, LazyBound(lambda: struct_pad_term__bytes_wrapper)),
	'str_term' / FixedSized(20, LazyBound(lambda: struct_pad_term__bytes_wrapper)),
	'str_term_and_pad' / FixedSized(20, LazyBound(lambda: struct_pad_term__bytes_wrapper)),
	'str_term_include' / FixedSized(20, LazyBound(lambda: struct_pad_term__bytes_wrapper)),
)

_schema = struct_pad_term
