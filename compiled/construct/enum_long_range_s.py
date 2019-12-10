from construct import *
from construct.lib import *

def enum_long_range_s__constants(subcon):
	return Enum(subcon,
		long_min=-9223372036854775808,
		int_below_min=-2147483649,
		int_min=-2147483648,
		zero=0,
		int_max=2147483647,
		int_over_max=2147483648,
		long_max=9223372036854775807,
	)

enum_long_range_s = Struct(
	'f1' / enum_long_range_s__constants(Int64sb),
	'f2' / enum_long_range_s__constants(Int64sb),
	'f3' / enum_long_range_s__constants(Int64sb),
	'f4' / enum_long_range_s__constants(Int64sb),
	'f5' / enum_long_range_s__constants(Int64sb),
	'f6' / enum_long_range_s__constants(Int64sb),
	'f7' / enum_long_range_s__constants(Int64sb),
)

_schema = enum_long_range_s
