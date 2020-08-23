from construct import *
from construct.lib import *

nested_types3__subtype_a__subtype_c__subtype_d = Struct(
	'value_d' / Int8sb,
)

nested_types3__subtype_a__subtype_c = Struct(
)

nested_types3__subtype_a__subtype_cc = Struct(
	'value_cc' / Int8sb,
)

nested_types3__subtype_a = Struct(
)

nested_types3__subtype_b = Struct(
	'value_b' / Int8sb,
	'a_cc' / LazyBound(lambda: nested_types3__subtype_a__subtype_cc),
	'a_c_d' / LazyBound(lambda: nested_types3__subtype_a__subtype_c__subtype_d),
)

nested_types3 = Struct(
	'a_cc' / LazyBound(lambda: nested_types3__subtype_a__subtype_cc),
	'a_c_d' / LazyBound(lambda: nested_types3__subtype_a__subtype_c__subtype_d),
	'b' / LazyBound(lambda: nested_types3__subtype_b),
)

_schema = nested_types3
