from construct import *
from construct.lib import *

opaque_external_type_02_child__opaque_external_type_02_child_child = Struct(
	's3' / If(_root.some_method, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x40', include=True, consume=True)),
)

opaque_external_type_02_child = Struct(
	's1' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x7C', include=False, consume=True),
	's2' / NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x7C', include=False, consume=False),
	's3' / LazyBound(lambda: opaque_external_type_02_child__opaque_external_type_02_child_child),
	'some_method' / Computed(True),
)

_schema = opaque_external_type_02_child
