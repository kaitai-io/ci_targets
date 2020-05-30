from construct import *
from construct.lib import *

expr_int_div = Struct(
	'int_u' / Int32ul,
	'int_s' / Int32sl,
	'div_pos_const' / Computed(lambda this: 9837 // 13),
	'div_neg_const' / Computed(lambda this: -9837 // 13),
	'div_pos_seq' / Computed(lambda this: this.int_u // 13),
	'div_neg_seq' / Computed(lambda this: this.int_s // 13),
)

_schema = expr_int_div
