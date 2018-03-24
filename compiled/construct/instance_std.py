from construct import *
from construct.lib import *

instance_std = Struct(
	'header' / Pointer(2, FixedSized(5, GreedyString(encoding='ASCII'))),
)

_schema = instance_std
