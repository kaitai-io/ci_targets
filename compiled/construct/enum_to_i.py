from construct import *
from construct.lib import *
import enum

class enum_to_i__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

enum_to_i = Struct(
	'pet_1' / Enum(Int32ul, enum_to_i__animal),
	'pet_2' / Enum(Int32ul, enum_to_i__animal),
	'pet_1_i' / Computed(lambda this: this.pet_1.value),
	'pet_1_eq_int' / Computed(lambda this: this.pet_1.value == 7),
	'one_lt_two' / Computed(lambda this: this.pet_1.value < this.pet_2.value),
	'pet_1_mod' / Computed(lambda this: (this.pet_1.value + 32768)),
	'pet_2_eq_int' / Computed(lambda this: this.pet_2.value == 5),
)

_schema = enum_to_i
