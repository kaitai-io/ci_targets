from construct import *
from construct.lib import *

process_struct_pad_term__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

process_struct_pad_term = Struct(
	'str_pad' / FixedSized(20, LazyBound(lambda: process_struct_pad_term__bytes_wrapper)),
	'str_term' / FixedSized(20, LazyBound(lambda: process_struct_pad_term__bytes_wrapper)),
	'str_term_and_pad' / FixedSized(20, LazyBound(lambda: process_struct_pad_term__bytes_wrapper)),
	'str_term_include' / FixedSized(20, LazyBound(lambda: process_struct_pad_term__bytes_wrapper)),
)

_schema = process_struct_pad_term
