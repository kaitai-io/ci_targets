from construct import *
from construct.lib import *

repeat_until_term_bytes = Struct(
	'records1' / RepeatUntil(lambda obj_, list_, this: len(obj_) == 0, NullTerminated(GreedyBytes, term=b"\xAA", include=False, consume=True)),
	'records2' / RepeatUntil(lambda obj_, list_, this: obj_ != b"\xAA", NullTerminated(GreedyBytes, term=b"\xAA", include=True, consume=True)),
	'records3' / RepeatUntil(lambda obj_, list_, this: obj_ == this.records1[-1], NullTerminated(GreedyBytes, term=b"\x55", include=False, consume=False)),
)

_schema = repeat_until_term_bytes
