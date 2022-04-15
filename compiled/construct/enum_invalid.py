from construct import *
from construct.lib import *
import enum

class enum_invalid__animal(enum.IntEnum):
	dog = 102
	cat = 124

enum_invalid = Struct(
	'pet_1' / Enum(Int8ub, enum_invalid__animal),
	'pet_2' / Enum(Int8ub, enum_invalid__animal),
)

_schema = enum_invalid
