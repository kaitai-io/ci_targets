from construct import *
from construct.lib import *

expr_bytes_cmp = Struct(
	'one' / ???,
	'two' / ???,
)

_schema = expr_bytes_cmp
