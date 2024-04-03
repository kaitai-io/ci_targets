from construct import *
from construct.lib import *

enum_import_literals = Struct(
	'pet_1_eq' / Computed(lambda this: ('chicken' if True else 'dog') == 'chicken'),
	'pet_1_to_i' / Computed(lambda this: int('cat')),
	'pet_2' / Computed(lambda this: 'hare'),
)

_schema = enum_import_literals
