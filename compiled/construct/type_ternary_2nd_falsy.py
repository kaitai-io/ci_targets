from construct import *
from construct.lib import *

type_ternary_2nd_falsy__foo = Struct(
	'm' / Int8ub,
)

type_ternary_2nd_falsy = Struct(
	'int_truthy' / Int8ub,
	'ut' / LazyBound(lambda: type_ternary_2nd_falsy__foo),
	'int_array' / Array(2, Int8ub),
	'int_array_empty' / Array(0, Int8ub),
	'null_ut' / If(False, Computed(lambda this: this.ut)),
	'v_float_zero' / Computed(lambda this: (0.0 if this.t else 3.14)),
	't' / Computed(lambda this: True),
	'v_int_neg_zero' / Computed(lambda this: (0 if this.t else -20)),
	'v_int_zero' / Computed(lambda this: (0 if this.t else 10)),
	'v_false' / Computed(lambda this: (False if this.t else True)),
	'v_str_empty' / Computed(lambda this: (u"" if this.t else u"kaitai")),
	'v_int_array_empty' / Computed(lambda this: (this.int_array_empty if this.t else this.int_array)),
	'v_null_ut' / Computed(lambda this: (this.null_ut if this.t else this.ut)),
	'v_float_neg_zero' / Computed(lambda this: (-0.0 if this.t else -2.72)),
	'v_str_w_zero' / Computed(lambda this: (u"0" if this.t else u"30")),
)

_schema = type_ternary_2nd_falsy
