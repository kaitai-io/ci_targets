from construct import *
from construct.lib import *

default_big_endian = Struct(
	'one' / Int32ub,
)

_schema = default_big_endian
