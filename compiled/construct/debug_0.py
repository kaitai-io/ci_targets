from construct import *
from construct.lib import *

debug_0 = Struct(
	'one' / Int8ub,
	'array_of_ints' / Array(3, Int8ub),
	'_unnamed2' / Int8ub,
)

_schema = debug_0
