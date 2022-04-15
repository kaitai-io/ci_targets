from construct import *
from construct.lib import *
import enum

class enum_of_value_inst__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

enum_of_value_inst = Struct(
	'pet_1' / Enum(Int32ul, enum_of_value_inst__animal),
	'pet_2' / Enum(Int32ul, enum_of_value_inst__animal),
	'pet_3' / Computed(lambda this: KaitaiStream.resolve_enum(EnumOfValueInst.Animal, (4 if this.pet_1 == 'cat' else 12))),
	'pet_4' / Computed(lambda this: ('dog' if this.pet_1 == 'cat' else 'chicken')),
)

_schema = enum_of_value_inst
