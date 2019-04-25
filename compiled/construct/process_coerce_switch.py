from construct import *
from construct.lib import *

process_coerce_switch__foo = Struct(
	'bar' / FixedSized(4, GreedyBytes),
)

process_coerce_switch = Struct(
	'buf_type' / Int8ub,
	'flag' / Int8ub,
	'buf_unproc' / If(this.flag == 0, Switch(this.buf_type, {0: FixedSized(4, LazyBound(lambda: process_coerce_switch__foo)), }, default=FixedSized(4, GreedyBytes))),
	'buf_proc' / If(this.flag != 0, Switch(this.buf_type, {0: FixedSized(4, LazyBound(lambda: process_coerce_switch__foo)), }, default=FixedSized(4, GreedyBytes))),
	'buf' / Computed(lambda this: (this.buf_unproc if this.flag == 0 else this.buf_proc)),
)

_schema = process_coerce_switch
