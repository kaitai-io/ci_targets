from construct import *
from construct.lib import *

index_to_param_expr = Struct(
	'qty' / Int32ul,
	'sizes' / Int32ul,
	'blocks' / ???,
)

_schema = index_to_param_expr
