from construct import *
from construct.lib import *

nested_types3 = Struct(
	'a_cc' / ???,
	'a_c_d' / ???,
	'b' / ???,
)

_schema = nested_types3
