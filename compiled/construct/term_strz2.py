from construct import *
from construct.lib import *

term_strz2 = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x7C", include=False, consume=True),
	's2' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x7C", include=True, consume=True),
	's3' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x40", include=False, consume=False),
)

_schema = term_strz2
