from construct import *
from construct.lib import *

bits_signed_b64_le = Struct(
	'a_num' / ???,
	'a_bit' / ???,
	'b_num' / ???,
	'b_bit' / ???,
)

_schema = bits_signed_b64_le
