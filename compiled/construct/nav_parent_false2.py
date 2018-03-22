from construct import *
from construct.lib import *

nav_parent_false2__child = Struct(
	'foo' / Int8ub,
)

nav_parent_false2 = Struct(
	'parentless' / nav_parent_false2__child,
)

_schema = nav_parent_false2
