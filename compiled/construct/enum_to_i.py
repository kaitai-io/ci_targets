from construct import *
from construct.lib import *

def enum_to_i__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_to_i = Struct(
	'pet_1' / enum_to_i__animal(Int32ul),
	'pet_2' / enum_to_i__animal(Int32ul),
	'pet_1_i' / Computed(lambda this: this.pet_1.value),
	'pet_1_mod' / Computed(lambda this: (this.pet_1.value + 32768)),
	'one_lt_two' / Computed(lambda this: this.pet_1.value < this.pet_2.value),
)

_schema = enum_to_i
