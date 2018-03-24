from construct import *
from construct.lib import *

opaque_external_type_02_parent__parent_obj = Struct(
	'child' / LazyBound(lambda: opaque_external_type_02_child),
)

opaque_external_type_02_parent = Struct(
	'parent' / LazyBound(lambda: opaque_external_type_02_parent__parent_obj),
)

_schema = opaque_external_type_02_parent
