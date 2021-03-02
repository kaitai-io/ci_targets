from construct import *
from construct.lib import *

def enum_to_i_class_border_1__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_to_i_class_border_1 = Struct(
	'pet_1' / enum_to_i_class_border_1__animal(Int32ul),
	'pet_2' / enum_to_i_class_border_1__animal(Int32ul),
	'some_dog' / Computed(lambda this: KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, 4)),
	'checker' / Pointer(0, LazyBound(lambda: enum_to_i_class_border_2)),
)

_schema = enum_to_i_class_border_1
