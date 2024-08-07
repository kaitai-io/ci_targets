from construct import *
from construct.lib import *

valid_fail_repeat_expr = Struct(
	'foo' / GreedyRange(FixedSized(4, GreedyBytes)),
)

_schema = valid_fail_repeat_expr
