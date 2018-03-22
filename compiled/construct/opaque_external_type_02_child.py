from construct import *
from construct.lib import *

opaque_external_type_02_child = Struct(
	's1' / ???,
	's2' / ???,
	's3' / ???,
)

_schema = opaque_external_type_02_child
