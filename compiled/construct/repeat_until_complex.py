from construct import *
from construct.lib import *

repeat_until_complex = Struct(
	'first' / ???,
	'second' / ???,
	'third' / Int8ub,
)

_schema = repeat_until_complex
