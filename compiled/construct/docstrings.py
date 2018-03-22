from construct import *
from construct.lib import *

docstrings = Struct(
	'one' / Int8ub,
)

_schema = docstrings
