from construct import *
from construct.lib import *

recursive_one__fini = Struct(
	'finisher' / Int16ul,
)

recursive_one = Struct(
	'one' / Int8ub,
	'next' / ???,
)

_schema = recursive_one
