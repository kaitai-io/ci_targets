from construct import *
from construct.lib import *

def enum_of_value_inst__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_of_value_inst = Struct(
	'pet_1' / enum_of_value_inst__animal(Int32ul),
	'pet_2' / enum_of_value_inst__animal(Int32ul),
	'pet_3' / Computed(self._root.Animal((4 if self.pet_1 == self._root.Animal.cat else 12))),
	'pet_4' / Computed((self._root.Animal.dog if self.pet_1 == self._root.Animal.cat else self._root.Animal.chicken)),
)

_schema = enum_of_value_inst
