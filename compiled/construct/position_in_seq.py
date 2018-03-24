from construct import *
from construct.lib import *

position_in_seq__header_obj = Struct(
	'qty_numbers' / Int32ul,
)

position_in_seq = Struct(
	'numbers' / Array(this.header.qty_numbers, Int8ub),
	'header' / Pointer(16, LazyBound(lambda: position_in_seq__header_obj)),
)

_schema = position_in_seq
