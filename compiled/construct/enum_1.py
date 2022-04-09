from construct import *
from construct.lib import *

def enum_1__main_obj__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_1__main_obj__submain_obj = Struct(
	'pet_1' / enum_1__main_obj__animal(Int32ul),
	'pet_2' / enum_1__main_obj__animal(Int32ul),
)

enum_1__main_obj = Struct(
	'submain' / LazyBound(lambda: enum_1__main_obj__submain_obj),
)

enum_1 = Struct(
	'main' / LazyBound(lambda: enum_1__main_obj),
)

_schema = enum_1
