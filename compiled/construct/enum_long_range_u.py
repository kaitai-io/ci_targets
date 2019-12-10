from construct import *
from construct.lib import *

def enum_long_range_u__constants(subcon):
	return Enum(subcon,
		zero=0,
		int_max=4294967295,
		int_over_max=4294967296,
		long_max=9223372036854775807,
	)

enum_long_range_u = Struct(
	'f1' / enum_long_range_u__constants(Int64ub),
	'f2' / enum_long_range_u__constants(Int64ub),
	'f3' / enum_long_range_u__constants(Int64ub),
	'f4' / enum_long_range_u__constants(Int64ub),
)

_schema = enum_long_range_u
