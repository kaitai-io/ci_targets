from construct import *
from construct.lib import *

test__my_type = Struct(
	'world' / Int32sb,
	'repeated_thing' / Array(this.repeat_count, Int32sb),
)

test = Struct(
	'seq_block' / LazyBound(lambda: test),
)

_schema = test
