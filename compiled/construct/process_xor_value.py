from construct import *
from construct.lib import *

process_xor_value = Struct(
	'key' / Int8ub,
	'buf' / ???,
)

_schema = process_xor_value
