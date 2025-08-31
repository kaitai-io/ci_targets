from construct import *
from construct.lib import *

expr_io_pos_bits = Struct(
	'foo' / ???,
	'bar' / If(stream_tell(_io) == 1, ???),
	'baz' / If(stream_tell(_io) == 1, ???),
	'qux' / If(stream_tell(_io) == 2, ???),
)

_schema = expr_io_pos_bits
