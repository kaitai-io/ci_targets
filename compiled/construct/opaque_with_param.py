from construct import *
from construct.lib import *

opaque_with_param = Struct(
	'one' / params_def,
)

_schema = opaque_with_param
