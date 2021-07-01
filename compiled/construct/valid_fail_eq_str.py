from construct import *
from construct.lib import *

valid_fail_eq_str = Struct(
	'foo' / FixedSized(4, GreedyString(encoding='ASCII')),
)

_schema = valid_fail_eq_str
