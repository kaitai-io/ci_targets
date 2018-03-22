from construct import *
from construct.lib import *

nav_parent_vs_value_inst = Struct(
	's1' / ???,
	'child' / ???,
)

_schema = nav_parent_vs_value_inst
