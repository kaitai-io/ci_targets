from construct import *
from construct.lib import *

process_coerce_switch__foo = Struct(
	'bar' / Bytes(4),
)

process_coerce_switch = Struct(
	'buf_type' / Int8ub,
	'flag' / Int8ub,
	'buf_unproc' / ???,
	'buf_proc' / ???,
	'buf' / Computed((self.buf_unproc if self.flag == 0 else self.buf_proc)),
)

_schema = process_coerce_switch
