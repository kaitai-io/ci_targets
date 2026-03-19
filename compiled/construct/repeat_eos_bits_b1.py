from construct import *
from construct.lib import *

repeat_eos_bits_b1 = Struct(
	'bits' / GreedyRange(???),
)

_schema = repeat_eos_bits_b1
