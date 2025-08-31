from construct import *
from construct.lib import *

repeat_n_bytes = Struct(
	'records' / Array(3, FixedSized(5, GreedyBytes)),
)

_schema = repeat_n_bytes
