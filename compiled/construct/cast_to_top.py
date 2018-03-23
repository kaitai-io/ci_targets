from construct import *
from construct.lib import *

cast_to_top = Struct(
	'code' / Int8ub,
	'header' / cast_to_top,
	'header_casted' / Computed(self.header),
)

_schema = cast_to_top
