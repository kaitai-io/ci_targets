from construct import *
from construct.lib import *

repeat_eos_struct__chunk = Struct(
	'offset' / Int32ul,
	'len' / Int32ul,
)

repeat_eos_struct = Struct(
	'chunks' / repeat_eos_struct__chunk,
)

_schema = repeat_eos_struct
