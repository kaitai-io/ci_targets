from construct import *
from construct.lib import *

instance_user_array = Struct(
	'ofs' / Int32ul,
	'entry_size' / Int32ul,
	'qty_entries' / Int32ul,
)

_schema = instance_user_array
