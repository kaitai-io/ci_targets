from construct import *
from construct.lib import *

switch_manual_int_size__chunk__chunk_meta = Struct(
	'title' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True),
	'author' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True),
)

switch_manual_int_size__chunk__chunk_dir = Struct(
	'entries' / FixedSized(4, GreedyString(encoding='UTF-8')),
)

switch_manual_int_size__chunk = Struct(
	'code' / Int8ub,
	'size' / Int32ul,
	'body' / ???,
)

switch_manual_int_size = Struct(
	'chunks' / switch_manual_int_size__chunk,
)

_schema = switch_manual_int_size
