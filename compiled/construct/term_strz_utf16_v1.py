from construct import *
from construct.lib import *

term_strz_utf16_v1 = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=True),
	's2' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=False),
	'term' / Int16ul,
	's3' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=True, consume=True),
)

_schema = term_strz_utf16_v1
