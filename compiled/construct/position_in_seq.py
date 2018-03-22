from construct import *
from construct.lib import *

position_in_seq__header_obj = Struct(
	'qty_numbers' / Int32ul,
)

position_in_seq = Struct(
	'numbers' / Int8ub,
)

_schema = position_in_seq
