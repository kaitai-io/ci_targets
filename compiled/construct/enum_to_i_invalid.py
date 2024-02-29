from construct import *
from construct.lib import *
import enum

class enum_to_i_invalid__animal(enum.IntEnum):
	dog = 102
	cat = 124

enum_to_i_invalid = Struct(
	'pet_1' / Enum(Int8ub, enum_to_i_invalid__animal),
	'pet_2' / Enum(Int8ub, enum_to_i_invalid__animal),
	'one_lt_two' / Computed(lambda this: int(this.pet_1) < int(this.pet_2)),
	'pet_2_eq_int_f' / Computed(lambda this: int(this.pet_2) == 110),
	'pet_2_eq_int_t' / Computed(lambda this: int(this.pet_2) == 111),
	'pet_2_i' / Computed(lambda this: int(this.pet_2)),
	'pet_2_i_to_s' / Computed(lambda this: str(int(this.pet_2))),
	'pet_2_mod' / Computed(lambda this: (int(this.pet_2) + 32768)),
)

_schema = enum_to_i_invalid
