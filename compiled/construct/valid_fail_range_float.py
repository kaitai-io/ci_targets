from construct import *
from construct.lib import *

valid_fail_range_float = Struct(
	'foo' / Float32l,
)

_schema = valid_fail_range_float
