from construct import *
from construct.lib import *

repeat_eos_bits_b4 = Struct(
	'nibbles' / GreedyRange(???),
)

_schema = repeat_eos_bits_b4
