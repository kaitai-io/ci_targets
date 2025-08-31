from construct import *
from construct.lib import *

repeat_eos_term_bytes = Struct(
	'records' / GreedyRange(NullTerminated(GreedyBytes, term=b"\xB2", include=True, consume=True)),
)

_schema = repeat_eos_term_bytes
