from construct import *
from construct.lib import *

optional_id = Struct(
	'_unnamed0' / Int8ub,
	'_unnamed1' / Int8ub,
	'_unnamed2' / Bytes(5),
)

_schema = optional_id
