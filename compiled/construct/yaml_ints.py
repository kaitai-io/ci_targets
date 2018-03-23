from construct import *
from construct.lib import *

yaml_ints = Struct(
	'test_u4_dec' / Computed(4294967295),
	'test_u4_hex' / Computed(4294967295),
	'test_u8_dec' / Computed(18446744073709551615),
	'test_u8_hex' / Computed(18446744073709551615),
)

_schema = yaml_ints
