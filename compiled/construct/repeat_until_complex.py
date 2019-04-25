from construct import *
from construct.lib import *

repeat_until_complex__type_u1 = Struct(
	'count' / Int8ub,
	'values' / Array(this.count, Int8ub),
)

repeat_until_complex__type_u2 = Struct(
	'count' / Int16ul,
	'values' / Array(this.count, Int16ul),
)

repeat_until_complex = Struct(
	'first' / RepeatUntil(lambda obj_, list_, this: obj_.count == 0, LazyBound(lambda: repeat_until_complex__type_u1)),
	'second' / RepeatUntil(lambda obj_, list_, this: obj_.count == 0, LazyBound(lambda: repeat_until_complex__type_u2)),
	'third' / RepeatUntil(lambda obj_, list_, this: obj_ == 0, Int8ub),
)

_schema = repeat_until_complex
