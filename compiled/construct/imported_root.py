from construct import *
from construct.lib import *

imported_root = Struct(
	'one' / Int8ub,
)

_schema = imported_root
