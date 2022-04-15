from construct import *
from construct.lib import *
import enum

class enum_to_i_class_border_1__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

enum_to_i_class_border_1 = Struct(
	'pet_1' / Enum(Int32ul, enum_to_i_class_border_1__animal),
	'pet_2' / Enum(Int32ul, enum_to_i_class_border_1__animal),
	'some_dog' / Computed(lambda this: KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, 4)),
	'checker' / Pointer(0, LazyBound(lambda: enum_to_i_class_border_2)),
)

_schema = enum_to_i_class_border_1
