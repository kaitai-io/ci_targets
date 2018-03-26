from construct import *
from construct.lib import *

repeat_until_sized__record = Struct(
	'marker' / Int8ub,
	'body' / Int32ul,
)

repeat_until_sized = Struct(
	'records' / RepeatUntil(lambda obj_, list_, this: obj_.marker == 170, FixedSized(5, LazyBound(lambda: repeat_until_sized__record))),
)

_schema = repeat_until_sized
