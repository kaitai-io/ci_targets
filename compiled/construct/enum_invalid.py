from construct import *
from construct.lib import *

def enum_invalid__animal(subcon):
	return Enum(subcon,
		dog=102,
		cat=124,
	)

enum_invalid = Struct(
	'pet_1' / enum_invalid__animal(Int8ub),
	'pet_2' / enum_invalid__animal(Int8ub),
)

_schema = enum_invalid
