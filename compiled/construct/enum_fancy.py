from construct import *
from construct.lib import *

def enum_fancy__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_fancy = Struct(
	'pet_1' / enum_fancy__animal(Int32ul),
	'pet_2' / enum_fancy__animal(Int32ul),
)

_schema = enum_fancy
