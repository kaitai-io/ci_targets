from construct import *
from construct.lib import *

repeat_eos_bytes = Struct(
	'records' / GreedyRange(FixedSized(5, GreedyBytes)),
)

_schema = repeat_eos_bytes
