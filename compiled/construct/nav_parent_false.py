from construct import *
from construct.lib import *

nav_parent_false__parent_a = Struct(
	'foo' / nav_parent_false__child,
	'bar' / nav_parent_false__parent_b,
)

nav_parent_false__parent_b = Struct(
	'foo' / nav_parent_false__child,
)

nav_parent_false__child = Struct(
	'code' / Int8ub,
	'more' / ???,
)

nav_parent_false = Struct(
	'child_size' / Int8ub,
	'element_a' / nav_parent_false__parent_a,
	'element_b' / nav_parent_false__parent_b,
)

_schema = nav_parent_false
