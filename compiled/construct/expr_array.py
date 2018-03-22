from construct import *
from construct.lib import *

expr_array = Struct(
	'aint' / Int32ul,
	'afloat' / ???,
	'astr' / ???,
)

_schema = expr_array
