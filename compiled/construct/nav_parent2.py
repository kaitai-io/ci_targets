from construct import *
from construct.lib import *

nav_parent2 = Struct(
	'ofs_tags' / Int32ul,
	'num_tags' / Int32ul,
	'tags' / ???,
)

_schema = nav_parent2
