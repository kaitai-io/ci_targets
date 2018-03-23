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
	'buf' / Computed((this.buf_unproc if this.flag == 0 else this.buf_proc)),
)

_schema = process_coerce_switch
