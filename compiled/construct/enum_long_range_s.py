from construct import *
from construct.lib import *
import enum

class enum_long_range_s__constants(enum.IntEnum):
	long_min = -9223372036854775808
	int_below_min = -2147483649
	int_min = -2147483648
	zero = 0
	int_max = 2147483647
	int_over_max = 2147483648
	long_max = 9223372036854775807

enum_long_range_s = Struct(
	'f1' / Enum(Int64sb, enum_long_range_s__constants),
	'f2' / Enum(Int64sb, enum_long_range_s__constants),
	'f3' / Enum(Int64sb, enum_long_range_s__constants),
	'f4' / Enum(Int64sb, enum_long_range_s__constants),
	'f5' / Enum(Int64sb, enum_long_range_s__constants),
	'f6' / Enum(Int64sb, enum_long_range_s__constants),
	'f7' / Enum(Int64sb, enum_long_range_s__constants),
)

_schema = enum_long_range_s
