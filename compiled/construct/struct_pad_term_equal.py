from construct import *
from construct.lib import *

struct_pad_term_equal__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

struct_pad_term_equal = Struct(
	's1' / FixedSized(20, LazyBound(lambda: struct_pad_term_equal__bytes_wrapper)),
	's2' / FixedSized(20, LazyBound(lambda: struct_pad_term_equal__bytes_wrapper)),
	's3' / FixedSized(20, LazyBound(lambda: struct_pad_term_equal__bytes_wrapper)),
	's4' / FixedSized(20, LazyBound(lambda: struct_pad_term_equal__bytes_wrapper)),
)

_schema = struct_pad_term_equal
