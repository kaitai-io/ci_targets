from construct import *
from construct.lib import *
import enum

class enum_1__main_obj__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

enum_1__main_obj__submain_obj = Struct(
	'pet_1' / Enum(Int32ul, enum_1__main_obj__animal),
	'pet_2' / Enum(Int32ul, enum_1__main_obj__animal),
)

enum_1__main_obj = Struct(
	'submain' / LazyBound(lambda: enum_1__main_obj__submain_obj),
)

enum_1 = Struct(
	'main' / LazyBound(lambda: enum_1__main_obj),
)

_schema = enum_1
