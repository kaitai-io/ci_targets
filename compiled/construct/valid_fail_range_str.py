from construct import *
from construct.lib import *

valid_fail_range_str = Struct(
	'foo' / FixedSized(2, GreedyString(encoding='ASCII')),
)

_schema = valid_fail_range_str
