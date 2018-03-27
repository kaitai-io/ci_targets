from construct import *
from construct.lib import *

process_coerce_usertype1__record = Struct(
	'flag' / Int8ub,
	'buf_unproc' / If(this.flag == 0, FixedSized(4, LazyBound(lambda: process_coerce_usertype1__foo))),
	'buf_proc' / If(this.flag != 0, FixedSized(4, LazyBound(lambda: process_coerce_usertype1__foo))),
	'buf' / Computed(lambda this: (this.buf_unproc if this.flag == 0 else this.buf_proc)),
)

process_coerce_usertype1__foo = Struct(
	'value' / Int32ul,
)

process_coerce_usertype1 = Struct(
	'records' / Array(2, LazyBound(lambda: process_coerce_usertype1__record)),
)

_schema = process_coerce_usertype1
