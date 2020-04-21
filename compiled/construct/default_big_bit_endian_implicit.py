from construct import *
from construct.lib import *

default_big_bit_endian_implicit = Struct(
	'one' / ???,
)

_schema = default_big_bit_endian_implicit
