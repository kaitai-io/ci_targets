from construct import *
from construct.lib import *

nav_parent_false2 = Struct(
	'parentless' / ???,
)

_schema = nav_parent_false2
