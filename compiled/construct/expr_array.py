from construct import *
from construct.lib import *

expr_array = Struct(
	'aint' / Int32ul,
	'afloat' / ???,
	'astr' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True),
)

_schema = expr_array
