from construct import *
from construct.lib import *

term_bytes4__s1_type = Struct(
	'value' / NullTerminated(GreedyBytes, term=b"\x7C", include=False, consume=True),
)

term_bytes4__s2_type = Struct(
	'value' / NullTerminated(GreedyBytes, term=b"\x7C", include=False, consume=False),
)

term_bytes4__s3_type = Struct(
	'value' / NullTerminated(GreedyBytes, term=b"\x40", include=True, consume=True),
)

term_bytes4 = Struct(
	's1' / FixedSized(3, LazyBound(lambda: term_bytes4__s1_type)),
	'skip_term1' / Int8ub,
	's2' / FixedSized(3, LazyBound(lambda: term_bytes4__s2_type)),
	'skip_term2' / Int8ub,
	's3' / FixedSized(3, LazyBound(lambda: term_bytes4__s3_type)),
)

_schema = term_bytes4
