from construct import *
from construct.lib import *

instance_io_user = Struct(
	'qty_entries' / Int32ul,
	'entries' / ???,
	'strings' / ???,
)

_schema = instance_io_user
