from construct import *
from construct.lib import *

nav_parent3 = Struct(
	'ofs_tags' / Int32ul,
	'num_tags' / Int32ul,
)

_schema = nav_parent3
