from construct import *
from construct.lib import *

bcd_user_type_be__ltr_obj = Struct(
	'b1' / Int8ub,
	'b2' / Int8ub,
	'b3' / Int8ub,
	'b4' / Int8ub,
	'digit2' / Computed(lambda this: (this.b1 & 15)),
	'digit8' / Computed(lambda this: (this.b4 & 15)),
	'as_int' / Computed(lambda this: ((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000))),
	'as_str' / Computed(lambda this: str(this.digit1) + str(this.digit2) + str(this.digit3) + str(this.digit4) + str(this.digit5) + str(this.digit6) + str(this.digit7) + str(this.digit8)),
	'digit4' / Computed(lambda this: (this.b2 & 15)),
	'digit6' / Computed(lambda this: (this.b3 & 15)),
	'digit5' / Computed(lambda this: ((this.b3 & 240) >> 4)),
	'digit7' / Computed(lambda this: ((this.b4 & 240) >> 4)),
	'digit1' / Computed(lambda this: ((this.b1 & 240) >> 4)),
	'digit3' / Computed(lambda this: ((this.b2 & 240) >> 4)),
)

bcd_user_type_be__rtl_obj = Struct(
	'b1' / Int8ub,
	'b2' / Int8ub,
	'b3' / Int8ub,
	'b4' / Int8ub,
	'digit2' / Computed(lambda this: (this.b1 & 15)),
	'digit8' / Computed(lambda this: (this.b4 & 15)),
	'as_int' / Computed(lambda this: ((((((((this.digit1 * 1) + (this.digit2 * 10)) + (this.digit3 * 100)) + (this.digit4 * 1000)) + (this.digit5 * 10000)) + (this.digit6 * 100000)) + (this.digit7 * 1000000)) + (this.digit8 * 10000000))),
	'as_str' / Computed(lambda this: str(this.digit8) + str(this.digit7) + str(this.digit6) + str(this.digit5) + str(this.digit4) + str(this.digit3) + str(this.digit2) + str(this.digit1)),
	'digit4' / Computed(lambda this: (this.b2 & 15)),
	'digit6' / Computed(lambda this: (this.b3 & 15)),
	'digit5' / Computed(lambda this: ((this.b3 & 240) >> 4)),
	'digit7' / Computed(lambda this: ((this.b4 & 240) >> 4)),
	'digit1' / Computed(lambda this: ((this.b1 & 240) >> 4)),
	'digit3' / Computed(lambda this: ((this.b2 & 240) >> 4)),
)

bcd_user_type_be__leading_zero_ltr_obj = Struct(
	'b1' / Int8ub,
	'b2' / Int8ub,
	'b3' / Int8ub,
	'b4' / Int8ub,
	'digit2' / Computed(lambda this: (this.b1 & 15)),
	'digit8' / Computed(lambda this: (this.b4 & 15)),
	'as_int' / Computed(lambda this: ((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000))),
	'as_str' / Computed(lambda this: str(this.digit1) + str(this.digit2) + str(this.digit3) + str(this.digit4) + str(this.digit5) + str(this.digit6) + str(this.digit7) + str(this.digit8)),
	'digit4' / Computed(lambda this: (this.b2 & 15)),
	'digit6' / Computed(lambda this: (this.b3 & 15)),
	'digit5' / Computed(lambda this: ((this.b3 & 240) >> 4)),
	'digit7' / Computed(lambda this: ((this.b4 & 240) >> 4)),
	'digit1' / Computed(lambda this: ((this.b1 & 240) >> 4)),
	'digit3' / Computed(lambda this: ((this.b2 & 240) >> 4)),
)

bcd_user_type_be = Struct(
	'ltr' / FixedSized(4, LazyBound(lambda: bcd_user_type_be__ltr_obj)),
	'rtl' / FixedSized(4, LazyBound(lambda: bcd_user_type_be__rtl_obj)),
	'leading_zero_ltr' / FixedSized(4, LazyBound(lambda: bcd_user_type_be__leading_zero_ltr_obj)),
)

_schema = bcd_user_type_be
