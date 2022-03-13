from construct import *
from construct.lib import *

bits_unaligned_b64_be = Struct(
	'a' / ???,
	'b' / ???,
	'c' / ???,
)

_schema = bits_unaligned_b64_be
