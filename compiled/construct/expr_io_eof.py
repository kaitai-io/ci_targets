from construct import *
from construct.lib import *

expr_io_eof__one_or_two = Struct(
	'one' / Int32ul,
	'two' / If(not (stream_iseof(_io)), Int32ul),
	'reflect_eof' / Computed(lambda this: stream_iseof(_io)),
)

expr_io_eof = Struct(
	'substream1' / FixedSized(4, LazyBound(lambda: expr_io_eof__one_or_two)),
	'substream2' / FixedSized(8, LazyBound(lambda: expr_io_eof__one_or_two)),
)

_schema = expr_io_eof
