from construct import *
from construct.lib import *

term_strz = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x7C", include=False, consume=True),
	's2' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x7C", include=False, consume=False),
	's3' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x40", include=True, consume=True),
)

_schema = term_strz
