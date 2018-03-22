from construct import *
from construct.lib import *

imports_abs_abs = Struct(
	'one' / Int8ub,
	'two' / ???,
)

_schema = imports_abs_abs
