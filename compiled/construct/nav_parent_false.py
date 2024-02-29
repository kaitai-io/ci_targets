from construct import *
from construct.lib import *

nav_parent_false__child = Struct(
	'code' / Int8ub,
	'more' / If(this.code == 73, FixedSized(this._._.child_size, GreedyBytes)),
)

nav_parent_false__parent_a = Struct(
	'foo' / LazyBound(lambda: nav_parent_false__child),
	'bar' / LazyBound(lambda: nav_parent_false__parent_b),
)

nav_parent_false__parent_b = Struct(
	'foo' / LazyBound(lambda: nav_parent_false__child),
)

nav_parent_false = Struct(
	'child_size' / Int8ub,
	'element_a' / LazyBound(lambda: nav_parent_false__parent_a),
	'element_b' / LazyBound(lambda: nav_parent_false__parent_b),
)

_schema = nav_parent_false
