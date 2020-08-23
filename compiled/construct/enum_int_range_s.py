from construct import *
from construct.lib import *

def enum_int_range_s__constants(subcon):
	return Enum(subcon,
		int_min=-2147483648,
		zero=0,
		int_max=2147483647,
	)

enum_int_range_s = Struct(
	'f1' / enum_int_range_s__constants(Int32sb),
	'f2' / enum_int_range_s__constants(Int32sb),
	'f3' / enum_int_range_s__constants(Int32sb),
)

_schema = enum_int_range_s
