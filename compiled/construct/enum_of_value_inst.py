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
	'pet_3' / Computed(lambda this: KaitaiStream.resolve_enum(EnumOfValueInst.Animal, (4 if this.pet_1 == EnumOfValueInst.Animal.cat else 12))),
	'pet_4' / Computed(lambda this: (EnumOfValueInst.Animal.dog if this.pet_1 == EnumOfValueInst.Animal.cat else EnumOfValueInst.Animal.chicken)),
)

_schema = enum_of_value_inst
