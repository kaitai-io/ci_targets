from construct import *
from construct.lib import *

process_coerce_usertype2__record = Struct(
	'flag' / Int8ub,
	'buf_unproc' / process_coerce_usertype2__foo,
	'buf_proc' / FixedSized(4, process_coerce_usertype2__foo),
)

process_coerce_usertype2__foo = Struct(
	'value' / Int32ul,
)

process_coerce_usertype2 = Struct(
	'records' / process_coerce_usertype2__record,
)

_schema = process_coerce_usertype2
