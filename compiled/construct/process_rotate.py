from construct import *
from construct.lib import *

process_rotate = Struct(
	'buf1' / ???,
	'buf2' / ???,
	'key' / Int8ub,
	'buf3' / ???,
)

_schema = process_rotate
