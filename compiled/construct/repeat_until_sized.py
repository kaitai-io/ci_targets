from construct import *
from construct.lib import *

repeat_until_sized__record = Struct(
	'marker' / Int8ub,
	'body' / Int32ul,
)

repeat_until_sized = Struct(
	'records' / ???,
)

_schema = repeat_until_sized
