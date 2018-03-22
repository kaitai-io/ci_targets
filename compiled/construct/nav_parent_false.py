from construct import *
from construct.lib import *

nav_parent_false = Struct(
	'child_size' / Int8ub,
	'element_a' / ???,
	'element_b' / ???,
)

_schema = nav_parent_false
