from construct import *
from construct.lib import *

repeat_eos_bit = Struct(
	'nibbles' / GreedyRange(???),
)

_schema = repeat_eos_bit
