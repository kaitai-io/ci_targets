from construct import *
from construct.lib import *

instance_std = Struct(
	'header' / FixedSized(5, GreedyString(encoding='ASCII')),
)

_schema = instance_std
