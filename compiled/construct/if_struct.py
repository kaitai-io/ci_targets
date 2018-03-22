from construct import *
from construct.lib import *

if_struct = Struct(
	'op1' / ???,
	'op2' / ???,
	'op3' / ???,
)

_schema = if_struct
