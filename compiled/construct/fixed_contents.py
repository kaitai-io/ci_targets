from construct import *
from construct.lib import *

fixed_contents = Struct(
	'normal' / ???,
	'high_bit_8' / ???,
)

_schema = fixed_contents
