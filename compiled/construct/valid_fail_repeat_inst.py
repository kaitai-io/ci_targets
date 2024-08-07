from construct import *
from construct.lib import *

valid_fail_repeat_inst = Struct(
	'a' / If(len(this.inst) == 0, FixedSized(0, GreedyBytes)),
	'inst' / Pointer(0, GreedyRange(Int32ub)),
)

_schema = valid_fail_repeat_inst
