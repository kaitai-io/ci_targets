from construct import *
from construct.lib import *

switch_manual_enum = Struct(
	'opcodes' / ???,
)

_schema = switch_manual_enum
