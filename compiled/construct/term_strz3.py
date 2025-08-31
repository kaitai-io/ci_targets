from construct import *
from construct.lib import *

term_strz3 = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x7C", include=False, consume=False),
	's2' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x40", include=False, consume=False),
	's3' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x40", include=False, consume=True),
)

_schema = term_strz3
