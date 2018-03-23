from construct import *
from construct.lib import *

instance_io_user__entry = Struct(
	'name_ofs' / Int32ul,
	'value' / Int32ul,
	'name' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True),
)

instance_io_user__strings_obj = Struct(
	'str' / GreedyRange(NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
)

instance_io_user = Struct(
	'qty_entries' / Int32ul,
	'entries' / Array(this.qty_entries, instance_io_user__entry),
	'strings' / ???,
)

_schema = instance_io_user
