from construct import *
from construct.lib import *

expr_io_pos__all_plus_number = Struct(
	'my_str' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x00", include=False, consume=True),
	'body' / FixedSized((stream_size(_io) - stream_tell(_io)) - 2, GreedyBytes),
	'number' / Int16ul,
)

expr_io_pos = Struct(
	'substream1' / FixedSized(16, LazyBound(lambda: expr_io_pos__all_plus_number)),
	'substream2' / FixedSized(14, LazyBound(lambda: expr_io_pos__all_plus_number)),
)

_schema = expr_io_pos
