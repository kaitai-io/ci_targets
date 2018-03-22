from construct import *
from construct.lib import *

enum_for_unknown_id = Struct(
	'one' / ???,
)

_schema = enum_for_unknown_id
