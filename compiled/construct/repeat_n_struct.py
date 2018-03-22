from construct import *
from construct.lib import *

repeat_n_struct = Struct(
	'qty' / Int32ul,
	'chunks' / ???,
)

_schema = repeat_n_struct
