from construct import *
from construct.lib import *

repeat_n_struct__chunk = Struct(
	'offset' / Int32ul,
	'len' / Int32ul,
)

repeat_n_struct = Struct(
	'qty' / Int32ul,
	'chunks' / Array(this.qty, repeat_n_struct__chunk),
)

_schema = repeat_n_struct
