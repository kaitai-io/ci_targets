from construct import *
from construct.lib import *

docstrings_docref = Struct(
	'one' / Int8ub,
	'two' / Int8ub,
	'three' / Int8ub,
)

_schema = docstrings_docref
