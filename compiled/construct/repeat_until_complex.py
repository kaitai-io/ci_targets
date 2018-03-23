from construct import *
from construct.lib import *

repeat_until_complex__type_u1 = Struct(
	'count' / Int8ub,
	'values' / Array(self.count, Int8ub),
)

repeat_until_complex__type_u2 = Struct(
	'count' / Int16ul,
	'values' / Array(self.count, Int16ul),
)

repeat_until_complex = Struct(
	'first' / ???,
	'second' / ???,
	'third' / ???,
)

_schema = repeat_until_complex
