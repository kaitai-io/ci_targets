from construct import *
from construct.lib import *

valid_fail_repeat_anyof_int = Struct(
	'foo' / GreedyRange(Int8ub),
)

_schema = valid_fail_repeat_anyof_int
