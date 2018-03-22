from construct import *
from construct.lib import *

position_abs__index_obj = Struct(
	'entry' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True),
)

position_abs = Struct(
	'index_offset' / Int32ul,
)

_schema = position_abs
