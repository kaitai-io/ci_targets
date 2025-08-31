from construct import *
from construct.lib import *

repeat_n_term_bytes = Struct(
	'records1' / Array(2, NullTerminated(GreedyBytes, term=b"\xAA", include=False, consume=True)),
	'records2' / Array(2, NullTerminated(GreedyBytes, term=b"\xAA", include=True, consume=True)),
	'records3' / Array(2, NullTerminated(GreedyBytes, term=b"\x55", include=False, consume=False)),
)

_schema = repeat_n_term_bytes
