from construct import *
from construct.lib import *

if_instances = Struct(
	'never_happens' / Pointer(100500, If(False, Int8ub)),
)

_schema = if_instances
