from construct import *
from construct.lib import *
import enum

class enum_negative__constants(enum.IntEnum):
	negative_one = -1
	positive_one = 1

enum_negative = Struct(
	'f1' / Enum(Int8sb, enum_negative__constants),
	'f2' / Enum(Int8sb, enum_negative__constants),
)

_schema = enum_negative
