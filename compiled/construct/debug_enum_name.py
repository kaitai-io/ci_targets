from construct import *
from construct.lib import *

debug_enum_name = Struct(
	'one' / ???,
	'array_of_ints' / ???,
	'test_type' / ???,
)

_schema = debug_enum_name
