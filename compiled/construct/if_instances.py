from construct import *
from construct.lib import *

if_instances = Struct(
	'never_happens' / Int8ub,
)

_schema = if_instances
