from construct import *
from construct.lib import *

position_abs = Struct(
	'index_offset' / Int32ul,
)

_schema = position_abs
