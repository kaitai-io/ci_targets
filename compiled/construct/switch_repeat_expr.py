from construct import *
from construct.lib import *

switch_repeat_expr = Struct(
	'code' / Int8ub,
	'size' / Int32ul,
	'body' / ???,
)

_schema = switch_repeat_expr
