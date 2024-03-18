from construct import *
from construct.lib import *

nested_types_import = Struct(
	'a_cc' / LazyBound(lambda: nested_types3__subtype_a__subtype_cc),
	'a_c_d' / LazyBound(lambda: nested_types3__subtype_a__subtype_c__subtype_d),
	'b' / LazyBound(lambda: nested_types3__subtype_b),
)

_schema = nested_types_import
