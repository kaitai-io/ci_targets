from construct import *
from construct.lib import *

imports_circular_b = Struct(
	'initial' / Int8ub,
	'back_ref' / ???,
)

_schema = imports_circular_b
