from construct import *
from construct.lib import *

term_strz_utf16_v2 = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=True),
	's2' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=True, consume=True),
	's3' / NullTerminated(GreedyString(encoding='UTF-16LE'), term=b"\x00\x00", include=False, consume=False),
)

_schema = term_strz_utf16_v2
