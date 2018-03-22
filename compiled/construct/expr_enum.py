from construct import *
from construct.lib import *

def expr_enum__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
		boom=102,
	)

expr_enum = Struct(
	'one' / Int8ub,
)

_schema = expr_enum
