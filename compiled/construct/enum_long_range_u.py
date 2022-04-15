from construct import *
from construct.lib import *
import enum

class enum_long_range_u__constants(enum.IntEnum):
	zero = 0
	int_max = 4294967295
	int_over_max = 4294967296
	long_max = 9223372036854775807

enum_long_range_u = Struct(
	'f1' / Enum(Int64ub, enum_long_range_u__constants),
	'f2' / Enum(Int64ub, enum_long_range_u__constants),
	'f3' / Enum(Int64ub, enum_long_range_u__constants),
	'f4' / Enum(Int64ub, enum_long_range_u__constants),
)

_schema = enum_long_range_u
