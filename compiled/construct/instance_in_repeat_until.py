from construct import *
from construct.lib import *

instance_in_repeat_until = Struct(
	'entries' / RepeatUntil(lambda obj_, list_, this: obj_ == this.until_val, Int16sl),
	'until_val' / Pointer(stream_tell(_io) + 12, Int16sl),
)

_schema = instance_in_repeat_until
