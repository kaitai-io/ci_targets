from construct import *
from construct.lib import *

imports_abs = Struct(
	'len' / ???,
	'body' / ???,
)

_schema = imports_abs
