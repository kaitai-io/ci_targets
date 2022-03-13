from construct import *
from construct.lib import *

bits_unaligned_b32_le = Struct(
	'a' / ???,
	'b' / ???,
	'c' / ???,
)

_schema = bits_unaligned_b32_le
