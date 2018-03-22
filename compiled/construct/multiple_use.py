from construct import *
from construct.lib import *

multiple_use__multi = Struct(
	'value' / Int32sl,
)

multiple_use__type_1 = Struct(
	'first_use' / multiple_use__multi,
)

multiple_use__type_2 = Struct(
)

multiple_use = Struct(
	't1' / multiple_use__type_1,
	't2' / multiple_use__type_2,
)

_schema = multiple_use
