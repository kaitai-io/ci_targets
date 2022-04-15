from construct import *
from construct.lib import *
import enum

class enum_fancy__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

enum_fancy = Struct(
	'pet_1' / Enum(Int32ul, enum_fancy__animal),
	'pet_2' / Enum(Int32ul, enum_fancy__animal),
)

_schema = enum_fancy
