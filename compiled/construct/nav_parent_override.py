from construct import *
from construct.lib import *

nav_parent_override = Struct(
	'child_size' / Int8ub,
	'child_1' / ???,
	'mediator_2' / ???,
)

_schema = nav_parent_override
