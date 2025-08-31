from construct import *
from construct.lib import *

instance_io_user_earlier__baz = Struct(
	'v' / If(this._.into_b.inst.last == 89, Int8ub),
)

instance_io_user_earlier__foo = Struct(
	'indicator' / Int8ub,
	'bar' / If( ((stream_size(this.inst._io) != 0) and (this.inst.content == 102)) , Int8ub),
	'inst' / Pointer(1, FixedSized((4 if stream_tell(_io) != 14 else 0), LazyBound(lambda: instance_io_user_earlier__slot))),
)

instance_io_user_earlier__slot = Struct(
	'content' / If(stream_size(_io) != 0, Int8ub),
	'last' / Pointer(stream_size(_io) - 1, If(stream_size(_io) != 0, Int8ub)),
)

instance_io_user_earlier = Struct(
	'sized_a' / FixedSized(6, LazyBound(lambda: instance_io_user_earlier__slot)),
	'sized_b' / FixedSized(6, LazyBound(lambda: instance_io_user_earlier__slot)),
	'into_b' / LazyBound(lambda: instance_io_user_earlier__foo),
	'into_a_skipped' / LazyBound(lambda: instance_io_user_earlier__foo),
	'into_a' / LazyBound(lambda: instance_io_user_earlier__foo),
	'last_accessor' / LazyBound(lambda: instance_io_user_earlier__baz),
	'a_mid' / Pointer(1, Int16ul),
	'b_mid' / Pointer(1, Int16ul),
)

_schema = instance_io_user_earlier
