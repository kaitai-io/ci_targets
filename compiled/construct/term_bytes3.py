from construct import *
from construct.lib import *

term_bytes3 = Struct(
	's1' / NullTerminated(GreedyBytes, term=b"\x7C", include=False, consume=False),
	's2' / NullTerminated(GreedyBytes, term=b"\x40", include=False, consume=False),
	's3' / NullTerminated(GreedyBytes, term=b"\x40", include=False, consume=True),
)

_schema = term_bytes3
