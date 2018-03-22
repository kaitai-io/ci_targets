from construct import *
from construct.lib import *

buffered_struct = Struct(
	'len1' / Int32ul,
	'block1' / ???,
	'len2' / Int32ul,
	'block2' / ???,
	'finisher' / Int32ul,
)

_schema = buffered_struct
