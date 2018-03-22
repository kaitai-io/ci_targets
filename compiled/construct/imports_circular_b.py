from construct import *
from construct.lib import *

imports_circular_b = Struct(
	'initial' / Int8ub,
	'back_ref' / imports_circular_a,
)

_schema = imports_circular_b
