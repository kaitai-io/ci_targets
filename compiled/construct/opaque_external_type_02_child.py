from construct import *
from construct.lib import *

opaque_external_type_02_child__opaque_external_type_02_child_child = Struct(
	's3' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x40', include=True, consume=True),
)

opaque_external_type_02_child = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x7C', include=False, consume=True),
	's2' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x7C', include=False, consume=False),
	's3' / opaque_external_type_02_child__opaque_external_type_02_child_child,
)

_schema = opaque_external_type_02_child
