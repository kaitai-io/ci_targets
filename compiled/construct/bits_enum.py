from construct import *
from construct.lib import *
import enum

class bits_enum__animal(enum.IntEnum):
	cat = 0
	dog = 1
	horse = 4
	platypus = 5

bits_enum = Struct(
	'one' / Enum(???, bits_enum__animal),
	'two' / Enum(???, bits_enum__animal),
	'three' / Enum(???, bits_enum__animal),
)

_schema = bits_enum
