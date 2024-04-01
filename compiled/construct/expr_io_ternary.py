from construct import *
from construct.lib import *

expr_io_ternary__one = Struct(
	'one' / Int8ub,
)

expr_io_ternary__two = Struct(
	'two' / Int8ub,
)

expr_io_ternary = Struct(
	'flag' / Int8ub,
	'obj1' / FixedSized(4, LazyBound(lambda: expr_io_ternary__one)),
	'obj2' / FixedSized(8, LazyBound(lambda: expr_io_ternary__two)),
	'one_or_two_io' / Computed(lambda this: (this.obj1 if this.flag == 64 else this.obj2)._io),
	'one_or_two_io_size1' / Computed(lambda this: stream_size((this.obj1 if this.flag == 64 else this.obj2)._io)),
	'one_or_two_io_size2' / Computed(lambda this: stream_size(this.one_or_two_io)),
	'one_or_two_io_size_add_3' / Computed(lambda this: stream_size((this.obj1 if this.flag == 64 else this.obj2)._io) + 3),
	'one_or_two_obj' / Computed(lambda this: (this.obj1 if this.flag == 64 else this.obj2)),
)

_schema = expr_io_ternary
