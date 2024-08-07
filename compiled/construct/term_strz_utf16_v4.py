from construct import *
from construct.lib import *

term_strz_utf16_v4__s1_type = Struct(
	'value' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=True),
)

term_strz_utf16_v4__s2_type = Struct(
	'value' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=False),
)

term_strz_utf16_v4__s3_type = Struct(
	'value' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=True, consume=True),
)

term_strz_utf16_v4 = Struct(
	's1' / FixedSized(6, LazyBound(lambda: term_strz_utf16_v4__s1_type)),
	'skip_term1' / FixedSized(2, GreedyBytes),
	's2' / FixedSized(6, LazyBound(lambda: term_strz_utf16_v4__s2_type)),
	'skip_term2' / FixedSized(2, GreedyBytes),
	's3' / FixedSized(6, LazyBound(lambda: term_strz_utf16_v4__s3_type)),
)

_schema = term_strz_utf16_v4
