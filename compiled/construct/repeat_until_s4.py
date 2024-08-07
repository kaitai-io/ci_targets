from construct import *
from construct.lib import *

repeat_until_s4 = Struct(
	'entries' / RepeatUntil(lambda obj_, list_, this: obj_ == -1, Int32sl),
	'afterall' / NullTerminated(GreedyString(encoding='ASCII'), term=b"\x00", include=False, consume=True),
)

_schema = repeat_until_s4
