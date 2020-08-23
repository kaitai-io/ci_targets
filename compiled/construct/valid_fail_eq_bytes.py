from construct import *
from construct.lib import *

valid_fail_eq_bytes = Struct(
	'foo' / FixedSized(2, GreedyBytes),
)

_schema = valid_fail_eq_bytes
