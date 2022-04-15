from construct import *
from construct.lib import *
import enum

class enum_int_range_s__constants(enum.IntEnum):
	int_min = -2147483648
	zero = 0
	int_max = 2147483647

enum_int_range_s = Struct(
	'f1' / Enum(Int32sb, enum_int_range_s__constants),
	'f2' / Enum(Int32sb, enum_int_range_s__constants),
	'f3' / Enum(Int32sb, enum_int_range_s__constants),
)

_schema = enum_int_range_s
