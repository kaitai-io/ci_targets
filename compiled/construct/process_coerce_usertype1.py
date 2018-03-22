from construct import *
from construct.lib import *

process_coerce_usertype1__record = Struct(
	'flag' / Int8ub,
	'buf_unproc' / FixedSized(4, process_coerce_usertype1__foo),
	'buf_proc' / FixedSized(4, process_coerce_usertype1__foo),
)

process_coerce_usertype1__foo = Struct(
	'value' / Int32ul,
)

process_coerce_usertype1 = Struct(
	'records' / process_coerce_usertype1__record,
)

_schema = process_coerce_usertype1
