from construct import *
from construct.lib import *
import enum

class enum_0__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

enum_0 = Struct(
	'pet_1' / Enum(Int32ul, enum_0__animal),
	'pet_2' / Enum(Int32ul, enum_0__animal),
)

_schema = enum_0
