from construct import *
from construct.lib import *

repeat_until_bytes_pad_term = Struct(
	'records' / RepeatUntil(lambda obj_, list_, this: obj_ == b"\xAA\x55", FixedSized(5, NullStripped(NullTerminated(GreedyBytes, term=b"\x55", include=True), pad=b'\xAA'))),
)

_schema = repeat_until_bytes_pad_term
