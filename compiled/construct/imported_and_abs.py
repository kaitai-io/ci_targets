from construct import *
from construct.lib import *

imported_and_abs = Struct(
	'one' / Int8ub,
	'two' / imported_root,
)

_schema = imported_and_abs
