from construct import *
from construct.lib import *

term_bytes2 = Struct(
	's1' / NullTerminated(GreedyBytes, term=b"\x7C", include=False, consume=True),
	's2' / NullTerminated(GreedyBytes, term=b"\x7C", include=True, consume=True),
	's3' / NullTerminated(GreedyBytes, term=b"\x40", include=False, consume=False),
)

_schema = term_bytes2
