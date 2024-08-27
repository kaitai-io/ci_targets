from construct import *
from construct.lib import *

valid_fail_contents_inst = Struct(
	'a' / If(len(this.foo) == 0, FixedSized(0, GreedyBytes)),
	'foo' / Pointer(0, FixedSized(2, GreedyBytes)),
)

_schema = valid_fail_contents_inst
