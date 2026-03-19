from construct import *
from construct.lib import *

switch_repeat_expr_invalid__one = Struct(
	'first' / GreedyBytes,
)

switch_repeat_expr_invalid__two = Struct(
	'second' / GreedyBytes,
)

switch_repeat_expr_invalid = Struct(
	'codes' / Array(3, Int8ub),
	'body' / Array(3, Switch(this.codes[i], {1: FixedSized(4, LazyBound(lambda: switch_repeat_expr_invalid__one)), 2: FixedSized(4, LazyBound(lambda: switch_repeat_expr_invalid__two)), }, default=FixedSized(4, GreedyBytes))),
)

_schema = switch_repeat_expr_invalid
