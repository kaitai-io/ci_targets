from construct import *
from construct.lib import *

enum_if = Struct(
	'op1' / ???,
	'op2' / ???,
	'op3' / ???,
)

_schema = enum_if
