from construct import *
from construct.lib import *

def enum_0__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_0 = Struct(
	'pet_1' / enum_0__animal(Int32ul),
	'pet_2' / enum_0__animal(Int32ul),
)

_schema = enum_0
