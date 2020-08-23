from construct import *
from construct.lib import *

io_local_var__dummy = Struct(
)

io_local_var = Struct(
	'skip' / FixedSized(20, GreedyBytes),
	'always_null' / If(stream_tell(this.mess_up._io) < 0, Int8ub),
	'followup' / Int8ub,
	'mess_up' / Pointer(8, Switch(2, {1: FixedSized(2, LazyBound(lambda: io_local_var__dummy)), 2: FixedSized(2, LazyBound(lambda: io_local_var__dummy)), }, default=FixedSized(2, GreedyBytes))),
)

_schema = io_local_var
