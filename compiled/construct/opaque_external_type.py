from construct import *
from construct.lib import *

opaque_external_type = Struct(
	'hw' / LazyBound(lambda: hello_world),
)

_schema = opaque_external_type
