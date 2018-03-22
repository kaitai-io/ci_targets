from construct import *
from construct.lib import *

nav_parent_override__mediator = Struct(
	'child_2' / nav_parent_override__child,
)

nav_parent_override__child = Struct(
	'data' / ???,
)

nav_parent_override = Struct(
	'child_size' / Int8ub,
	'child_1' / nav_parent_override__child,
	'mediator_2' / nav_parent_override__mediator,
)

_schema = nav_parent_override
