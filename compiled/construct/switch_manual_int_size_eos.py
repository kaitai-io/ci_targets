from construct import *
from construct.lib import *

switch_manual_int_size_eos__chunk = Struct(
	'code' / Int8ub,
	'size' / Int32ul,
	'body' / FixedSized(this.size, LazyBound(lambda: switch_manual_int_size_eos__chunk_body)),
)

switch_manual_int_size_eos__chunk_body__chunk_meta = Struct(
	'title' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True),
	'author' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True),
)

switch_manual_int_size_eos__chunk_body__chunk_dir = Struct(
	'entries' / GreedyRange(FixedSized(4, GreedyString(encoding='UTF-8'))),
)

switch_manual_int_size_eos__chunk_body = Struct(
	'body' / ???,
)

switch_manual_int_size_eos = Struct(
	'chunks' / GreedyRange(LazyBound(lambda: switch_manual_int_size_eos__chunk)),
)

_schema = switch_manual_int_size_eos
