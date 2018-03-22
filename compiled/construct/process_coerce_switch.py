from construct import *
from construct.lib import *

process_coerce_switch = Struct(
	'buf_type' / Int8ub,
	'flag' / Int8ub,
	'buf_unproc' / ???,
	'buf_proc' / ???,
)

_schema = process_coerce_switch
