from construct import *
from construct.lib import *

enum_of_value_inst = Struct(
	'pet_1' / ???,
	'pet_2' / ???,
)

_schema = enum_of_value_inst
