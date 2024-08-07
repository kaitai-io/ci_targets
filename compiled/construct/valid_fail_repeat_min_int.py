from construct import *
from construct.lib import *

valid_fail_repeat_min_int = Struct(
	'foo' / GreedyRange(Int8sb),
)

_schema = valid_fail_repeat_min_int
