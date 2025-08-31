from construct import *
from construct.lib import *

instance_in_repeat_expr__chunk = Struct(
	'offset' / Int32ul,
	'len' / Int32ul,
)

instance_in_repeat_expr = Struct(
	'chunks' / Array(this.num_chunks, LazyBound(lambda: instance_in_repeat_expr__chunk)),
	'num_chunks' / Pointer(stream_tell(_io) + 16, Int32ul),
)

_schema = instance_in_repeat_expr
