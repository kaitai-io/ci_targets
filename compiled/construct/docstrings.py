from construct import *
from construct.lib import *

docstrings__complex_subtype = Struct(
)

docstrings = Struct(
	'one' / Int8ub,
	'three' / Computed(lambda this: 66),
	'two' / Pointer(0, Int8ub),
)

_schema = docstrings
