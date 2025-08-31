from construct import *
from construct.lib import *

repeat_until_bytes = Struct(
	'records' / RepeatUntil(lambda obj_, list_, this: KaitaiStream.byte_array_index(obj_, 0) == 170, FixedSized(5, GreedyBytes)),
)

_schema = repeat_until_bytes
