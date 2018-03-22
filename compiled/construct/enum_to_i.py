from construct import *
from construct.lib import *

enum_to_i = Struct(
	'pet_1' / ???,
	'pet_2' / ???,
)

_schema = enum_to_i
