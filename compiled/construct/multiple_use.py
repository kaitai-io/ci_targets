from construct import *
from construct.lib import *

multiple_use__multi = Struct(
	'value' / Int32sl,
)

multiple_use__type_1 = Struct(
	'first_use' / LazyBound(lambda: multiple_use__multi),
)

multiple_use__type_2 = Struct(
	'second_use' / Pointer(0, LazyBound(lambda: multiple_use__multi)),
)

multiple_use = Struct(
	't1' / LazyBound(lambda: multiple_use__type_1),
	't2' / LazyBound(lambda: multiple_use__type_2),
)

_schema = multiple_use
