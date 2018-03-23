from construct import *
from construct.lib import *

switch_repeat_expr__one = Struct(
	'first' / GreedyBytes,
)

switch_repeat_expr__two = Struct(
	'second' / GreedyBytes,
)

switch_repeat_expr = Struct(
	'code' / Int8ub,
	'size' / Int32ul,
	'body' / Array(1, ???),
)

_schema = switch_repeat_expr
