from construct import *
from construct.lib import *

docstrings__complex_subtype = Struct(
)

docstrings = Struct(
	'one' / Int8ub,
	'two' / Pointer(0, Int8ub),
	'three' / Computed(66),
)

_schema = docstrings
