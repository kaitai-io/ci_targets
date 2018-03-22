from construct import *
from construct.lib import *

enum_negative = Struct(
	'f1' / ???,
	'f2' / ???,
)

_schema = enum_negative
