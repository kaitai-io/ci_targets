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
)

_schema = enum_of_value_inst
