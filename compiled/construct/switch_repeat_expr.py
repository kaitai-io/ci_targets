from construct import *
from construct.lib import *

switch_repeat_expr__one = Struct(
	'first' / GreedyBytes,
)

switch_repeat_expr__two = Struct(
	'second' / GreedyBytes,
)

switch_repeat_expr = Struct(
	'codes' / Array(3, Int8ub),
	'body' / Array(3, Switch(this.codes[i], {1: FixedSized(4, LazyBound(lambda: switch_repeat_expr__one)), 2: FixedSized(4, LazyBound(lambda: switch_repeat_expr__one)), 7: FixedSized(4, LazyBound(lambda: switch_repeat_expr__two)), }, default=FixedSized(4, GreedyBytes))),
)

_schema = switch_repeat_expr
