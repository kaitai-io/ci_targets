from construct import *
from construct.lib import *

process_rotate = Struct(
	'buf1' / Bytes(5),
	'buf2' / Bytes(5),
	'key' / Int8ub,
	'buf3' / Bytes(5),
)

_schema = process_rotate
