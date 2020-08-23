from construct import *
from construct.lib import *

def enum_int_range_u__constants(subcon):
	return Enum(subcon,
		zero=0,
		int_max=4294967295,
	)

enum_int_range_u = Struct(
	'f1' / enum_int_range_u__constants(Int32ub),
	'f2' / enum_int_range_u__constants(Int32ub),
)

_schema = enum_int_range_u
