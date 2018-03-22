from construct import *
from construct.lib import *

expr_3 = Struct(
	'one' / Int8ub,
	'two' / ???,
)

_schema = expr_3
