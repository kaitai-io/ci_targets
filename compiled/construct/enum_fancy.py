from construct import *
from construct.lib import *

enum_fancy = Struct(
	'pet_1' / ???,
	'pet_2' / ???,
)

_schema = enum_fancy
