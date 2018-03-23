from construct import *
from construct.lib import *

expr_io_pos__all_plus_number = Struct(
	'my_str' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True),
	'body' / Bytes(((this._io.size() - this._io.pos()) - 2)),
	'number' / Int16ul,
)

expr_io_pos = Struct(
	'substream1' / FixedSized(16, expr_io_pos__all_plus_number),
	'substream2' / FixedSized(14, expr_io_pos__all_plus_number),
)

_schema = expr_io_pos
