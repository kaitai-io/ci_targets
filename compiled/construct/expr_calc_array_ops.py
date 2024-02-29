from construct import *
from construct.lib import *

expr_calc_array_ops = Struct(
	'double_array_mid' / Computed(lambda this: this.double_array[1]),
	'str_array_size' / Computed(lambda this: len(this.str_array)),
	'int_array_mid' / Computed(lambda this: this.int_array[1]),
	'double_array_last' / Computed(lambda this: this.double_array[-1]),
	'double_array_max' / Computed(lambda this: max(this.double_array)),
	'int_array' / Computed(lambda this: [10, 25, 50, 100, 200, 500, 1000]),
	'double_array_min' / Computed(lambda this: min(this.double_array)),
	'str_array_mid' / Computed(lambda this: this.str_array[1]),
	'int_array_min' / Computed(lambda this: min(this.int_array)),
	'int_array_max' / Computed(lambda this: max(this.int_array)),
	'int_array_size' / Computed(lambda this: len(this.int_array)),
	'double_array_size' / Computed(lambda this: len(this.double_array)),
	'double_array' / Computed(lambda this: [10.0, 25.0, 50.0, 100.0, 3.14159]),
	'double_array_first' / Computed(lambda this: this.double_array[0]),
	'int_array_first' / Computed(lambda this: this.int_array[0]),
	'int_array_last' / Computed(lambda this: this.int_array[-1]),
	'str_array_min' / Computed(lambda this: min(this.str_array)),
	'str_array' / Computed(lambda this: [u"un", u"deux", u"trois", u"quatre"]),
	'str_array_first' / Computed(lambda this: this.str_array[0]),
	'str_array_max' / Computed(lambda this: max(this.str_array)),
	'str_array_last' / Computed(lambda this: this.str_array[-1]),
)

_schema = expr_calc_array_ops
