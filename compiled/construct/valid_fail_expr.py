from construct import *
from construct.lib import *

valid_fail_expr = Struct(
	'foo' / Int8ub,
	'bar' / Int16sl,
)

_schema = valid_fail_expr
