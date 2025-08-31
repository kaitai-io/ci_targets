from construct import *
from construct.lib import *

repeat_until_term_struct__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

repeat_until_term_struct = Struct(
	'records1' / RepeatUntil(lambda obj_, list_, this: len(obj_.value) == 0, ???),
	'records2' / RepeatUntil(lambda obj_, list_, this: obj_.value != b"\xAA", ???),
	'records3' / RepeatUntil(lambda obj_, list_, this: obj_.value == this.records1[-1].value, ???),
)

_schema = repeat_until_term_struct
