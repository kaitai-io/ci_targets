from construct import *
from construct.lib import *

def enum_deep__container1__container2__animal(subcon):
	return Enum(subcon,
		canary=4,
		turtle=7,
		hare=12,
	)

enum_deep__container1__container2 = Struct(
)

def enum_deep__container1__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_deep__container1 = Struct(
)

enum_deep = Struct(
	'pet_1' / enum_deep__container1__animal(Int32ul),
	'pet_2' / enum_deep__container1__container2__animal(Int32ul),
)

_schema = enum_deep
