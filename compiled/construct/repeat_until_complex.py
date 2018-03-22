from construct import *
from construct.lib import *

repeat_until_complex__type_u1 = Struct(
	'count' / Int8ub,
	'values' / Int8ub,
)

repeat_until_complex__type_u2 = Struct(
	'count' / Int16ul,
	'values' / Int16ul,
)

repeat_until_complex = Struct(
	'first' / repeat_until_complex__type_u1,
	'second' / repeat_until_complex__type_u2,
	'third' / Int8ub,
)

_schema = repeat_until_complex
