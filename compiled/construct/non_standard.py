from construct import *
from construct.lib import *

non_standard = Struct(
	'foo' / Int8ub,
	'bar' / ???,
)

_schema = non_standard
