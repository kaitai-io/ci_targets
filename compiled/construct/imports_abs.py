from construct import *
from construct.lib import *

imports_abs = Struct(
	'len' / vlq_base128_le,
	'body' / ???,
)

_schema = imports_abs
