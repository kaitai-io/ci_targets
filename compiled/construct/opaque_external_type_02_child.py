from construct import *
from construct.lib import *

opaque_external_type_02_child = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x7C', include=False, consume=True),
	's2' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x7C', include=False, consume=False),
	's3' / ???,
)

_schema = opaque_external_type_02_child
