from construct import *
from construct.lib import *

opaque_external_type = Struct(
	'one' / LazyBound(lambda: term_strz),
)

_schema = opaque_external_type
