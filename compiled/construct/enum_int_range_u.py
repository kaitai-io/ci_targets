from construct import *
from construct.lib import *
import enum

class enum_int_range_u__constants(enum.IntEnum):
	zero = 0
	int_max = 4294967295

enum_int_range_u = Struct(
	'f1' / Enum(Int32ub, enum_int_range_u__constants),
	'f2' / Enum(Int32ub, enum_int_range_u__constants),
)

_schema = enum_int_range_u
