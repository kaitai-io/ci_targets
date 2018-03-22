from construct import *
from construct.lib import *

instance_user_array__entry = Struct(
	'word1' / Int16ul,
	'word2' / Int16ul,
)

instance_user_array = Struct(
	'ofs' / Int32ul,
	'entry_size' / Int32ul,
	'qty_entries' / Int32ul,
)

_schema = instance_user_array
