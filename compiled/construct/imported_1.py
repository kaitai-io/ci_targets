from construct import *
from construct.lib import *

imported_1 = Struct(
	'one' / Int8ub,
	'two' / imported_2,
)

_schema = imported_1
