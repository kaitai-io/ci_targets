from construct import *
from construct.lib import *

nav_root = Struct(
	'header' / ???,
	'index' / ???,
)

_schema = nav_root
