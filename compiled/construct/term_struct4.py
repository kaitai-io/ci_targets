from construct import *
from construct.lib import *

term_struct4__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

term_struct4__s1_type = Struct(
	'value' / ???,
)

term_struct4__s2_type = Struct(
	'value' / ???,
)

term_struct4__s3_type = Struct(
	'value' / ???,
)

term_struct4 = Struct(
	's1' / FixedSized(3, LazyBound(lambda: term_struct4__s1_type)),
	'skip_term1' / Int8ub,
	's2' / FixedSized(3, LazyBound(lambda: term_struct4__s2_type)),
	'skip_term2' / Int8ub,
	's3' / FixedSized(3, LazyBound(lambda: term_struct4__s3_type)),
)

_schema = term_struct4
