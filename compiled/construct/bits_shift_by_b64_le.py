from construct import *
from construct.lib import *

bits_shift_by_b64_le = Struct(
	'a' / ???,
	'b' / ???,
)

_schema = bits_shift_by_b64_le
