from construct import *
from construct.lib import *

enum_to_i_class_border_2 = Struct(
	'is_dog' / Computed(lambda this: int(this.parent.some_dog) == 4),
)

_schema = enum_to_i_class_border_2
