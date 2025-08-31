from construct import *
from construct.lib import *

expr_io_eof_bits = Struct(
	'foo' / ???,
	'bar' / If((not (stream_iseof(_io))), ???),
	'baz' / If((not (stream_iseof(_io))), ???),
	'align' / FixedSized(0, GreedyBytes),
	'qux' / If((not (stream_iseof(_io))), ???),
)

_schema = expr_io_eof_bits
