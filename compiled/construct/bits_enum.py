from construct import *
from construct.lib import *

bits_enum = Struct(
	'one' / ???,
	'two' / ???,
	'three' / ???,
)

_schema = bits_enum
