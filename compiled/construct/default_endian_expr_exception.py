from construct import *
from construct.lib import *

default_endian_expr_exception = Struct(
	'docs' / ???,
)

_schema = default_endian_expr_exception
