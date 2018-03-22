from construct import *
from construct.lib import *

expr_mod = Struct(
	'int_u' / Int32ul,
	'int_s' / Int32sl,
)

_schema = expr_mod
