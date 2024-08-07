from construct import *
from construct.lib import *

term_u1_val = Struct(
	'foo' / NullTerminated(GreedyBytes, term=b"\xE3", include=False, consume=False),
	'bar' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\xAB", include=True, consume=True),
)

_schema = term_u1_val
