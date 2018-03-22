from construct import *
from construct.lib import *

bcd_user_type_le__ltr_obj = Struct(
	'b1' / Int8ub,
	'b2' / Int8ub,
	'b3' / Int8ub,
	'b4' / Int8ub,
)

bcd_user_type_le__rtl_obj = Struct(
	'b1' / Int8ub,
	'b2' / Int8ub,
	'b3' / Int8ub,
	'b4' / Int8ub,
)

bcd_user_type_le__leading_zero_ltr_obj = Struct(
	'b1' / Int8ub,
	'b2' / Int8ub,
	'b3' / Int8ub,
	'b4' / Int8ub,
)

bcd_user_type_le = Struct(
	'ltr' / FixedSized(4, bcd_user_type_le__ltr_obj),
	'rtl' / FixedSized(4, bcd_user_type_le__rtl_obj),
	'leading_zero_ltr' / FixedSized(4, bcd_user_type_le__leading_zero_ltr_obj),
)

_schema = bcd_user_type_le
