from construct import *
from construct.lib import *

switch_manual_int_size_else__chunk__chunk_dir = Struct(
	'entries' / GreedyRange(FixedSized(4, GreedyString(encoding='UTF-8'))),
)

switch_manual_int_size_else__chunk__chunk_meta = Struct(
	'title' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x00", include=False, consume=True),
	'author' / NullTerminated(GreedyString(encoding='UTF-8'), term=b"\x00", include=False, consume=True),
)

switch_manual_int_size_else__chunk__dummy = Struct(
	'rest' / GreedyBytes,
)

switch_manual_int_size_else__chunk = Struct(
	'code' / Int8ub,
	'size' / Int32ul,
	'body' / Switch(this.code, {17: FixedSized(this.size, LazyBound(lambda: switch_manual_int_size_else__chunk__chunk_meta)), 34: FixedSized(this.size, LazyBound(lambda: switch_manual_int_size_else__chunk__chunk_dir)), }, default=FixedSized(this.size, LazyBound(lambda: switch_manual_int_size_else__chunk__dummy))),
)

switch_manual_int_size_else = Struct(
	'chunks' / GreedyRange(LazyBound(lambda: switch_manual_int_size_else__chunk)),
)

_schema = switch_manual_int_size_else
