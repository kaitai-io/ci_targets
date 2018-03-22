from construct import *
from construct.lib import *

expr_io_eof__one_or_two = Struct(
	'one' / Int32ul,
	'two' / Int32ul,
)

expr_io_eof = Struct(
	'substream1' / FixedSized(4, expr_io_eof__one_or_two),
	'substream2' / FixedSized(8, expr_io_eof__one_or_two),
)

_schema = expr_io_eof
