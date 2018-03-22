from construct import *
from construct.lib import *

expr_enum = Struct(
	'one' / Int8ub,
)

_schema = expr_enum
