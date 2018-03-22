from construct import *
from construct.lib import *

cast_nested = Struct(
	'opcodes' / ???,
)

_schema = cast_nested
