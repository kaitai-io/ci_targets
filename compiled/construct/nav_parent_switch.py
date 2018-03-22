from construct import *
from construct.lib import *

nav_parent_switch = Struct(
	'category' / Int8ub,
	'content' / ???,
)

_schema = nav_parent_switch
