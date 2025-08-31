from construct import *
from construct.lib import *

term_strz4__s1_type = Struct(
	'value' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x7C", include=False, consume=True),
)

term_strz4__s2_type = Struct(
	'value' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x7C", include=False, consume=False),
)

term_strz4__s3_type = Struct(
	'value' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x40", include=True, consume=True),
)

term_strz4 = Struct(
	's1' / FixedSized(3, LazyBound(lambda: term_strz4__s1_type)),
	'skip_term1' / Int8ub,
	's2' / FixedSized(3, LazyBound(lambda: term_strz4__s2_type)),
	'skip_term2' / Int8ub,
	's3' / FixedSized(3, LazyBound(lambda: term_strz4__s3_type)),
)

_schema = term_strz4
