from construct import *
from construct.lib import *

valid_fail_inst = Struct(
	'a' / If(this.inst >= 0, Int8ub),
	'inst' / Pointer(5, Int8ub),
)

_schema = valid_fail_inst
