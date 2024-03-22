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
	'one_lt_two' / Computed(lambda this: int(this.pet_1) < int(this.pet_2)),
	'pet_1_eq_int' / Computed(lambda this: int(this.pet_1) == 7),
	'pet_1_i' / Computed(lambda this: int(this.pet_1)),
	'pet_1_i_to_s' / Computed(lambda this: str(int(this.pet_1))),
	'pet_1_mod' / Computed(lambda this: int(this.pet_1) + 32768),
	'pet_2_eq_int' / Computed(lambda this: int(this.pet_2) == 5),
)

_schema = enum_to_i
