from construct import *
from construct.lib import *

term_strz_utf16_v3 = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=False),
	'term' / Int16ul,
	's2' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=False),
	's3' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=True),
)

_schema = term_strz_utf16_v3
