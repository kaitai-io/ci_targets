from construct import *
from construct.lib import *

process_coerce_bytes__record = Struct(
	'flag' / Int8ub,
	'buf_unproc' / ???,
	'buf_proc' / ???,
)

process_coerce_bytes = Struct(
	'records' / process_coerce_bytes__record,
)

_schema = process_coerce_bytes
