from construct import *
from construct.lib import *

valid_fail_range_int = Struct(
	'foo' / Int8ub,
)

_schema = valid_fail_range_int
