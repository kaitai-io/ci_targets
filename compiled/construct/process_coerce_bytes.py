from construct import *
from construct.lib import *

process_coerce_bytes__record = Struct(
	'flag' / Int8ub,
	'buf_unproc' / If(this.flag == 0, Bytes(4)),
	'buf_proc' / If(this.flag != 0, Bytes(4)),
	'buf' / Computed((this.buf_unproc if this.flag == 0 else this.buf_proc)),
)

process_coerce_bytes = Struct(
	'records' / Array(2, LazyBound(lambda: process_coerce_bytes__record)),
)

_schema = process_coerce_bytes
