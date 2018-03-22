from construct import *
from construct.lib import *

nested_types = Struct(
	'one' / ???,
	'two' / ???,
)

_schema = nested_types
