from construct import *
from construct.lib import *

valid_fail_repeat_eq_int = Struct(
	'foo' / GreedyRange(Int32ub),
)

_schema = valid_fail_repeat_eq_int
