from construct import *
from construct.lib import *

instance_in_sized__bar = Struct(
	'seq_f' / Int8ub,
	'inst' / Pointer(4 + 1, FixedSized(3, GreedyBytes)),
)

instance_in_sized__baz = Struct(
	'seq_f' / Int8ub,
	'inst' / Pointer(8 + 1, FixedSized(3, GreedyBytes)),
)

instance_in_sized__qux = Struct(
	'seq_f' / If(this.inst_invoked > 0, Int8ub),
	'inst_invoked' / Pointer(stream_tell(_io) + 1, Int8ub),
	'inst_unused_by_seq' / Pointer(stream_tell(_io) + 1, FixedSized(2, GreedyBytes)),
)

instance_in_sized__wrapper = Struct(
	'seq_sized' / FixedSized(4, LazyBound(lambda: instance_in_sized__qux)),
	'seq_in_stream' / LazyBound(lambda: instance_in_sized__bar),
	'inst_in_stream' / Pointer(stream_tell(_io) + 3, LazyBound(lambda: instance_in_sized__baz)),
	'inst_sized' / Pointer(stream_tell(_io) + 7, FixedSized(4, LazyBound(lambda: instance_in_sized__qux))),
)

instance_in_sized = Struct(
	'cont' / FixedSized(16, LazyBound(lambda: instance_in_sized__wrapper)),
)

_schema = instance_in_sized
