from construct import *
from construct.lib import *

opaque_with_param = Struct(
	'one' / ???,
)

_schema = opaque_with_param
