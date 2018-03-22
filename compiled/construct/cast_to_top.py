from construct import *
from construct.lib import *

cast_to_top = Struct(
	'code' / Int8ub,
)

_schema = cast_to_top
