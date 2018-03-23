from construct import *
from construct.lib import *

instance_std_array = Struct(
	'ofs' / Int32ul,
	'entry_size' / Int32ul,
	'qty_entries' / Int32ul,
	'entries' / Array(self.qty_entries, Bytes(self.entry_size)),
)

_schema = instance_std_array
