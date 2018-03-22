from construct import *
from construct.lib import *

opaque_external_type = Struct(
	'one' / term_strz,
)

_schema = opaque_external_type
