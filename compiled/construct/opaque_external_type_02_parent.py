from construct import *
from construct.lib import *

opaque_external_type_02_parent = Struct(
	'parent' / ???,
)

_schema = opaque_external_type_02_parent
