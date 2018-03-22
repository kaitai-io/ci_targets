from construct import *
from construct.lib import *

docstrings__complex_subtype = Struct(
)

docstrings = Struct(
	'one' / Int8ub,
)

_schema = docstrings
