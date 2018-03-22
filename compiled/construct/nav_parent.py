from construct import *
from construct.lib import *

nav_parent = Struct(
	'header' / ???,
	'index' / ???,
)

_schema = nav_parent
