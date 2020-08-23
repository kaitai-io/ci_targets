from construct import *
from construct.lib import *

fixed_contents = Struct(
	'normal' / FixedSized(6, GreedyBytes),
	'high_bit_8' / FixedSized(2, GreedyBytes),
)

_schema = fixed_contents
