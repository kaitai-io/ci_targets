from construct import *
from construct.lib import *

default_endian_mod = Struct(
	'main' / ???,
)

_schema = default_endian_mod
