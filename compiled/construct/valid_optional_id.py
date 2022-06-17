from construct import *
from construct.lib import *

valid_optional_id = Struct(
	'_unnamed0' / FixedSized(6, GreedyBytes),
	'_unnamed1' / Int8ub,
	'_unnamed2' / Int8sb,
)

_schema = valid_optional_id
