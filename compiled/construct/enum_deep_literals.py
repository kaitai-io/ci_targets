from construct import *
from construct.lib import *
import enum

class enum_deep_literals__container1__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

class enum_deep_literals__container1__container2__animal(enum.IntEnum):
	canary = 4
	turtle = 7
	hare = 12

enum_deep_literals__container1__container2 = Struct(
)

enum_deep_literals__container1 = Struct(
)

enum_deep_literals = Struct(
	'pet_1' / Enum(Int32ul, enum_deep_literals__container1__animal),
	'pet_2' / Enum(Int32ul, enum_deep_literals__container1__container2__animal),
	'is_pet_1_ok' / Computed(lambda this: this.pet_1 == 'cat'),
	'is_pet_2_ok' / Computed(lambda this: this.pet_2 == 'hare'),
)

_schema = enum_deep_literals
