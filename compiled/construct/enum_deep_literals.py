from construct import *
from construct.lib import *

def enum_deep_literals__container1__container2__animal(subcon):
	return Enum(subcon,
		canary=4,
		turtle=7,
		hare=12,
	)

enum_deep_literals__container1__container2 = Struct(
)

def enum_deep_literals__container1__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_deep_literals__container1 = Struct(
)

enum_deep_literals = Struct(
	'pet_1' / enum_deep_literals__container1__animal(Int32ul),
	'pet_2' / enum_deep_literals__container1__container2__animal(Int32ul),
	'is_pet_1_ok' / Computed(lambda this: this.pet_1 == self._root.Container1.Animal.cat),
	'is_pet_2_ok' / Computed(lambda this: this.pet_2 == self._root.Container1.Container2.Animal.hare),
)

_schema = enum_deep_literals
