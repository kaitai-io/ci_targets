from construct import *
from construct.lib import *

valid_fail_range_bytes = Struct(
	'foo' / FixedSized(2, GreedyBytes),
)

_schema = valid_fail_range_bytes
