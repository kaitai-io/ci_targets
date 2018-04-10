from construct import *
from construct.lib import *

def enum_negative__constants(subcon):
	return Enum(subcon,
		negative_one=-1,
		positive_one=1,
	)

enum_negative = Struct(
	'f1' / enum_negative__constants(Int8sb),
	'f2' / enum_negative__constants(Int8sb),
)

_schema = enum_negative
