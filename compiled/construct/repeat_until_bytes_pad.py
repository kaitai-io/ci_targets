from construct import *
from construct.lib import *

repeat_until_bytes_pad = Struct(
	'records' / RepeatUntil(lambda obj_, list_, this: len(obj_) == 5, FixedSized(5, NullStripped(GreedyBytes, pad=b'\xAA'))),
)

_schema = repeat_until_bytes_pad
