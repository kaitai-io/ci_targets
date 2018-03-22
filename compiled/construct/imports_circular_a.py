from construct import *
from construct.lib import *

imports_circular_a = Struct(
	'code' / Int8ub,
	'two' / ???,
)

_schema = imports_circular_a
