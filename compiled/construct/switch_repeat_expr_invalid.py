from construct import *
from construct.lib import *

switch_repeat_expr_invalid__one = Struct(
	'first' / GreedyBytes,
)

switch_repeat_expr_invalid__two = Struct(
	'second' / GreedyBytes,
)

switch_repeat_expr_invalid = Struct(
	'code' / Int8ub,
	'size' / Int32ul,
	'body' / Array(1, Switch(this.code, {255: FixedSized(this.size, LazyBound(lambda: switch_repeat_expr_invalid__one)), 34: FixedSized(this.size, LazyBound(lambda: switch_repeat_expr_invalid__two)), }, default=FixedSized(this.size, GreedyBytes))),
)

_schema = switch_repeat_expr_invalid
