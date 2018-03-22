from construct import *
from construct.lib import *

opaque_external_type_02_parent__parent_obj = Struct(
	'child' / opaque_external_type_02_child,
)

opaque_external_type_02_parent = Struct(
	'parent' / opaque_external_type_02_parent__parent_obj,
)

_schema = opaque_external_type_02_parent
