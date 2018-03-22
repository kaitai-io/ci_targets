from construct import *
from construct.lib import *

nav_parent_vs_value_inst = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x7C', include=False, consume=True),
	'child' / ???,
)

_schema = nav_parent_vs_value_inst
