from construct import *
from construct.lib import *

opaque_external_type = Struct(
	'one' / ???,
)

_schema = opaque_external_type
