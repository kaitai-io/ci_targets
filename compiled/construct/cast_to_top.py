from construct import *
from construct.lib import *

cast_to_top = Struct(
	'code' / Int8ub,
	'header' / Pointer(1, LazyBound(lambda: cast_to_top)),
	'header_casted' / Computed(lambda this: this.header),
)

_schema = cast_to_top
