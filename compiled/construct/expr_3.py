from construct import *
from construct.lib import *

expr_3 = Struct(
	'one' / Int8ub,
	'two' / FixedSized(3, GreedyString(encoding='ASCII')),
)

_schema = expr_3
